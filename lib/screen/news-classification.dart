/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SummaryScreen extends StatefulWidget {
  final String summary;

  const SummaryScreen({Key? key, required this.summary}) : super(key: key);

  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Summary: ${widget.summary}',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Result: $_result',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () async {
              var fakeNewsResult = await _checkFakeNews(widget.summary);
              if (fakeNewsResult >= 60) {
                setState(() {
                  _result = 'Fake News';
                });
                _showFakeNewsDialog(context);
              } else {
                setState(() {
                  _result = 'Not Fake News';
                });
                _showSuccessDialog(context);
              }
            },
            child: Icon(Icons.search),
          ),
        ],
      ),
    );
  }

  Future<int> _checkFakeNews(String summary) async {
    var response = await http.post('https://c03b-35-233-212-191.ngrok.io/fake-news-detection' as Uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'summary': summary}));

    var result = json.decode(response.body);
    return result['fake_news_probability'];
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        });
  }
  void _showFakeNewsDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Icon(
              Icons.close,
              size: 100,
              color: Colors.red,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Failed to detect!'),
              ),
            ],
          );
        });
  }
}

class ResultsScreen extends StatefulWidget {
  final String summary;

  ResultsScreen({Key? key, required this.summary}) : super(key: key);

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  bool _isFakeNews = false;

  Future<void> _checkFakeNews() async {
    var fakeNewsProbability = await _getFakeNewsProbability(widget.summary);
    var fakeNewsThreshold = 0.6;

    if (fakeNewsProbability >= fakeNewsThreshold) {
      setState(() {
        _isFakeNews = true;
      });
    } else {
      Navigator.pop(context);
    }
  }

  Future<double> _getFakeNewsProbability(String summary) async {
    var response = await http.post('https://c03b-35-233-212-191.ngrok.io/fake-news-detection' as Uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'summary': summary}));

    var result = json.decode(response.body);
    return result['fake_news_probability'];
  }




  Future<void> _searchNews() async {
    var response = await http.post('https://c03b-35-233-212-191.ngrok.io/summary-classification' as Uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'summary': widget.summary}));

    var result = json.decode(response.body);
    String topic = result['topic'];

    response = await http.post('https://c03b-35-233-212-191.ngrok.io/news-search-topic' as Uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'topic': topic}));

    result = json.decode(response.body);
    List<dynamic> articles = result['articles'];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewsSearchScreen(
                  articles: articles,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (_isFakeNews)
            Text("Fake News"),
          else
            Text("Not Fake News"),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Close"),
          ),
          RaisedButton(
            onPressed: _searchNews,
            child: Text("Search News"),
          ),
        ],
      ),
    );
  }
}
*/
