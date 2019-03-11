﻿using System;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

using Newtonsoft.Json;
using YamlDotNet.Serialization;

using VaporShell.Validators;

namespace VaporShell.Test {
    public enum DeletionPolicy {
        Delete,
        Retain,
        Snapshot
    }
    public class LogicalId {
        readonly string _value;
        public LogicalId(string value) {
            if (Validate.LogicalId(value)) {
                _value = value;
            }
            else {
                throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
            }
        }
        public static implicit operator string(LogicalId d) {
            return d._value;
        }
        public static implicit operator LogicalId(string d) {
            return new LogicalId(d);
        }
    }
    public abstract class ResourceProperties {
        public ResourceProperties() {}
    }
    public class AutoScalingCreationPolicy {
        public int MinSuccessfulInstancesPercent { get; set; }

        public AutoScalingCreationPolicy() { }
        public AutoScalingCreationPolicy(int MinSuccessfulInstancesPercent) {
            if (MinSuccessfulInstancesPercent >= 0 && MinSuccessfulInstancesPercent <= 100) {
                this.MinSuccessfulInstancesPercent = MinSuccessfulInstancesPercent;
            }
            else {
                throw new ArgumentException("MinSuccessfulInstancesPercent must be between 0 - 100! Value provided: " + MinSuccessfulInstancesPercent);
            }
        }
    }
    public class ResourceSignal {
        public int Count { get; set; }
        private string _Timeout;
        public string Timeout {
            get {
                return _Timeout;
            }
            set {
                if (Validate.PauseTime(value)) {
                    _Timeout = value;
                }
                else {
                    throw new ArgumentException("Value did not match the correct pattern! Value provided: " + value);
                }
            }
        }

        public ResourceSignal() { }
        public ResourceSignal(int Count, string Timeout) {
            this.Count = Count;
            this.Timeout = Timeout;
        }
        public ResourceSignal(int Count) {
            this.Count = Count;
        }
        public ResourceSignal(string Timeout) {
            this.Timeout = Timeout;
        }
    }

    public class CreationPolicy {
        public AutoScalingCreationPolicy AutoScalingCreationPolicy { get; set; }
        public ResourceSignal ResourceSignal { get; set; }

        public CreationPolicy() { }
        public CreationPolicy(AutoScalingCreationPolicy AutoScalingCreationPolicy, ResourceSignal ResourceSignal) {
            this.AutoScalingCreationPolicy = AutoScalingCreationPolicy;
            this.ResourceSignal = ResourceSignal;
        }
        public CreationPolicy(AutoScalingCreationPolicy AutoScalingCreationPolicy) {
            this.AutoScalingCreationPolicy = AutoScalingCreationPolicy;
        }
        public CreationPolicy(ResourceSignal ResourceSignal) {
            this.ResourceSignal = ResourceSignal;
        }
    }
    public class UpdatePolicy {
        public Boolean WillReplace { get; set; }
        public int MaxBatchSize { get; set; }
        public int MinInstancesInService { get; set; }
        public int MinSuccessfulInstancesPercent { get; set; }
        public string PauseTime { get; set; }
        public string[] SuspendProcesses { get; set; }
        public Boolean WaitOnResourceSignals { get; set; }

        public UpdatePolicy() { }
    }
    public abstract class Resource {
        public LogicalId LogicalId { get; set; }
        public abstract string Type { get; set; }
        public abstract ResourceProperties Properties { get; set; }
        public CreationPolicy CreationPolicy { get; set; }
        public DeletionPolicy? DeletionPolicy { get; set; }
        public UpdatePolicy UpdatePolicy { get; set; }
        public string[] DependsOn { get; set; }
        public object Condition { get; set; }
        public object Metadata { get; set; }

        public override string ToString() => LogicalId.ToString();
        public LogicalId GetLogicalId() => LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                var val = GetType().GetProperty(item.Name).GetValue(this, null);
                if (item.Name != "LogicalId" && val != null) {
                    compiled.Add(item.Name, val);
                }
            }
            return compiled;
        }
    }

    public class Parameter {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Parameter() { }

        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                var val = GetType().GetProperty(item.Name).GetValue(this, null);
                if (item.Name != "LogicalId" && val != null) {
                    compiled.Add(item.Name, val);
                }
            }
            return compiled;
        }
    }
    public class Condition {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Condition() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Mapping {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Mapping() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Output {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Output() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Metadata {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public Dictionary<string, object> Data { get; set; }
        public Metadata() { }
        public Metadata(string LogicalId, Dictionary<string, object> Data) {
            this.LogicalId = LogicalId;
            this.Data = Data;
        }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            return Data;
        }
    }
    public class Template {
        public string AWSTemplateFormatVersion { get; set; }
        public string Description { get; set; }
        public List<VaporShell.Test.Metadata> Metadata { get; private set; } = new List<VaporShell.Test.Metadata>();
        public List<VaporShell.Test.Parameter> Parameters { get; private set; } = new List<VaporShell.Test.Parameter>();
        public List<VaporShell.Test.Condition> Conditions { get; private set; } = new List<VaporShell.Test.Condition>();
        public List<VaporShell.Test.Mapping> Mappings { get; private set; } = new List<VaporShell.Test.Mapping>();
        public List<VaporShell.Test.Resource> Resources { get; private set; } = new List<VaporShell.Test.Resource>();
        public List<VaporShell.Test.Output> Outputs { get; private set; } = new List<VaporShell.Test.Output>();
        public SortedDictionary<string, object> _compiled { get; private set; } = new SortedDictionary<string, object>();
        public DateTime _compiledAt { get; private set; } = DateTime.Now;
        public DateTime _updatedAt { get; private set; } = DateTime.Now;
        public Template() { }
        public Template(string Description) {
            this.Description = Description;
        }
        public Template(string AWSTemplateFormatVersion, string Description) {
            this.AWSTemplateFormatVersion = AWSTemplateFormatVersion;
            this.Description = Description;
        }

        public void AddResource(Resource item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Resources.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("A Resource with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Resource.");
                    }
                });
                Resources.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Resources")) {
                _compiled.Add("Resources", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Resources"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Resources"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Resources"]).Add(logId, item.GetProps());
            }
        }

        public void AddParameter(VaporShell.Test.Parameter item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Parameters.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("A Parameter with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Parameter.");
                    }
                });
                Parameters.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Parameters")) {
                _compiled.Add("Parameters", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Parameters"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Parameters"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Parameters"]).Add(logId, item.GetProps());
            }
        }

        public void AddCondition(VaporShell.Test.Condition item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Conditions.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("A Condition with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Condition.");
                    }
                });
                Conditions.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Conditions")) {
                _compiled.Add("Conditions", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Conditions"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Conditions"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Conditions"]).Add(logId, item.GetProps());
            }
        }

        public void AddMapping(VaporShell.Test.Mapping item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Mappings.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("A Mapping with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Mapping.");
                    }
                });
                Mappings.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Mappings")) {
                _compiled.Add("Mappings", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Mappings"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Mappings"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Mappings"]).Add(logId, item.GetProps());
            }
        }

        public void AddOutput(VaporShell.Test.Output item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Outputs.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("An Output with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Output.");
                    }
                });
                Outputs.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Outputs")) {
                _compiled.Add("Outputs", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Outputs"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Outputs"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Outputs"]).Add(logId, item.GetProps());
            }
        }

        public void AddMetadata(VaporShell.Test.Metadata item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Metadata.ForEach(x => {
                    if (x.LogicalId == logId) {
                        throw new ArgumentException("A Metadata with LogicalId of '" + logId + "' already exists on this template. You must use a unique LogicalId for each Metadata.");
                    }
                });
                Metadata.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Metadata")) {
                _compiled.Add("Metadata", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Metadata"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Metadata"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Metadata"]).Add(logId, item.GetProps());
            }
        }

        public SortedDictionary<string, object> GetCompiled() {
            return _compiled;
        }

        public override string ToString() {
            return ToJson(false);
        }
        public string ToJson(bool Compress = false) {
            Compile();
            var fmt = Newtonsoft.Json.Formatting.Indented;
            if (Compress) {
                fmt = Newtonsoft.Json.Formatting.None;
            }
            var jsonString = JsonConvert.SerializeObject(
                _compiled,
                fmt,
                new JsonSerializerSettings {
                    NullValueHandling = NullValueHandling.Ignore
                }
            );
            return jsonString;
        }
        public string ToYaml() {
            Compile();
            var serializer = new SerializerBuilder()
                .WithTagMapping("!Ref", typeof(VaporShell.Function.FnRef))
                .Build();
            var yaml = serializer.Serialize(_compiled);
            return yaml;
        }
        private void Compile() {
            if (_compiledAt <= _updatedAt) {
                _compiled = new SortedDictionary<string, object>();
                if (AWSTemplateFormatVersion != null) {
                    _compiled.Add("AWSTemplateFormatVersion", AWSTemplateFormatVersion);
                }
                if (Description != null) {
                    _compiled.Add("Description", Description);
                }
                foreach (var item in Metadata) {
                    AddMetadata(item, false);
                }
                foreach (var item in Parameters) {
                    AddParameter(item, false);
                }
                foreach (var item in Conditions) {
                    AddCondition(item, false);
                }
                foreach (var item in Mappings) {
                    AddMapping(item, false);
                }
                foreach (var item in Resources) {
                    AddResource(item, false);
                }
                foreach (var item in Outputs) {
                    AddOutput(item, false);
                }
                _compiledAt = DateTime.Now;
            }
        }
    }
}
