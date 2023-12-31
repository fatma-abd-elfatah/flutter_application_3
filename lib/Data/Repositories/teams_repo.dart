import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/tab_bars/teams/teams/teams.dart';

class TeamsRepo {
  Future<Teams?> getAllTeams(int leagueId) async {
    try {
      var response = await http.get(Uri.parse(
          "https://apiv2.allsportsapi.com/football/?&met=Teams&APIkey=e0a1aa20543e8be54adb246f127ae6b89af0bb6c96b83ea255ee5b29489ce114&leagueId=$leagueId"));

      Map<String, dynamic> deCodedResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        Teams data = Teams.fromJson(deCodedResponse);

        return data;
      } else {
        return null;
      }
    } catch (error) {
      print("Error : $error");
    }
  }

  Future<Teams?> searchByTeam(String searchText) async {
    try {
      var response = await http.get(Uri.parse(
          "https://apiv2.allsportsapi.com/football/?&met=Teams&APIkey=e0a1aa20543e8be54adb246f127ae6b89af0bb6c96b83ea255ee5b29489ce114&leagueId=2&teamName=$searchText"));

      Map<String, dynamic> deCodedResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        Teams data = Teams.fromJson(deCodedResponse);

        return data;
      } else {
        return null;
      }
    } catch (error) {
      print("Error : $error");
    }
  }
}
