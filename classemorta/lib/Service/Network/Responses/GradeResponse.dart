class GradeResponse {
    int _subjectId;
    String _subjectCode;
    String _subjectDesc;
    int _evtId;
    String _evtCode;
    String _evtDate;
    double _decimalValue;
    String _displayValue;
    int _displaPos;
    String _notesForFamily;
    String _color;
    bool _canceled;
    bool _underlined;
    int _periodPos;
    String _periodDesc;
    int _componentPos;
    String _componentDesc;
    int _weightFactor;
    int _skillId;
    int _gradeMasterId;
    String _skillDesc;
    String _skillCode;
    int _skillMasterId;
    int _oldskillId;
    String _oldskillDesc;
  
  
    LoginResponse.fromJson(Map<String, dynamic> json):
      _subjectId = json["subjectId"],
      _subjectCode = json["subjectCode"],
      _subjectDesc = json["subjectDesc"],
      _evtId = json["evtId"],
      _evtCode = json["evtCode"],
      _evtDate = json["evtDate"],
      _decimalValue = json["decimalValue"],
      _displayValue = json["displayValue"],
      _displaPos = json["displaPos"],
      _notesForFamily = json["v"],
      _color = json["color"],
      _canceled = json["canceled"],
      _underlined = json["underlined"],
      _periodPos = json["periodPos"],
      _periodDesc = json["periodDesc"],
      _componentPos = json["componentPos"],
      _componentDesc = json["componentDesc"],
      _weightFactor = json["weightFactor"],
      _skillId = json["skillId"],
      _gradeMasterId = json["gradeMasterId"],
      _skillDesc = json["skillDesc"],
      _skillCode = json["skillCode"],
      _skillMasterId = json["skillMasterId"],
      _oldskillId = json["oldskillId"],
      _oldskillDesc = json["oldskillDesc"],
      
  Map<String, dynamic> toJson() =>
    {
      'subjectId': _subjectId,
      'subjectCode': _subjectCode,
      'subjectDesc': _subjectDesc,
      'evtId': _evtId,
      'evtCode': _evtCode,
      'evtDate': _evtDate,
      'decimalValue': _decimalValue,
      'displayValue': _displayValue,
      'displaPos': _displaPos,
      'notesForFamily': _notesForFamily,
      'color': _color,
      'canceled': _canceled,
      'underlined': _underlined,
      'periodPos': _periodPos,
      'periodDesc': _periodDesc,
      'componentPos': _componentPos,
      'componentDesc': _componentDesc,
      'weightFactor': _weightFactor,
      'skillId': _skillId,
      'gradeMasterId': _gradeMasterId,
      'skillDesc': _skillDesc,
      'skillCode': _skillCode,
      'skillMasterId': _skillMasterId,
      'oldskillId': _oldskillId,
      'oldskillDesc': _oldskillDesc,
    };

}
