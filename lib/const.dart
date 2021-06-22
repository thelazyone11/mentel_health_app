import 'package:mentel_health_app/model/question_model.dart';

//// change Title name
const String title = 'MENTAL HEALTH\nCHECK UP'; //// \n == line break

//// Change title of category page
const String catTitle = 'Choose a category';

/// name option button here
const String optionButtonName1 = 'Never';
const String optionButtonName2 = 'Sometimes';
const String optionButtonName3 = 'Always';

//// List of Category
const List<String> listOfCategory = [
  'Depression',
  'Social Anxiety Disorder',
  'Eating Disorder',
  'Sleep Disorder',
  'Psychosis'
];

//// add category 1 questions here
List<QuestionModel> catQues1 = [
  QuestionModel(question: 'Public speaking'),
  QuestionModel(question: 'Making eye contact with someone'),
  QuestionModel(
      question:
          'Being the focus of attention, or the person everyone is listening to'),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
];
//// add category 2 questions here
List<QuestionModel> catQues2 = [
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
];
//// add category 3 questions here
List<QuestionModel> catQues3 = [
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
];
//// add category 4 questions here
List<QuestionModel> catQues4 = [
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
];
//// add category 5 questions here
List<QuestionModel> catQues5 = [
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
  QuestionModel(question: ''),
];

////////////////////////////////////////////////////////////////

List<List<QuestionModel>> listCatQues = [
  catQues1,
  catQues2,
  catQues3,
  catQues4,
  catQues5,
];
