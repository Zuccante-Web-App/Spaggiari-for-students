class Response<T> {
    bool _esit;
    T _data;
    
    bool get esit => this._esit;
    T get data => this._data;

    Response(this._esit, this._data);
  
}
