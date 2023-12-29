import 'package:flashcard/models/category.dart';
import 'package:flashcard/models/question.dart';

const categories_data = [
  Category(
      name: 'History',
      image:
          'https://i.pinimg.com/564x/ba/73/a2/ba73a2c77d49d74dee4789cf84ce19b9.jpg'),
  Category(
      name: 'Math',
      image:
          'https://i.pinimg.com/564x/12/d3/90/12d390c7fa53f6d622a7acc120cabe74.jpg'),
  Category(
      name: 'Biology',
      image:
          'https://i.pinimg.com/564x/12/54/05/125405c4c55b8b4613fa77593257a7ab.jpg'),
  Category(
      name: 'English',
      image:
          'https://i.pinimg.com/564x/54/2b/57/542b579c06d7a7fa81cf8d43d1c3455d.jpg'),
  Category(
      name: 'Physics',
      image:
          'https://i.pinimg.com/564x/32/82/62/328262e907090d63d6f97efe9554784d.jpg'),
  Category(
      name: 'Chemistry',
      image:
          'https://i.pinimg.com/564x/4c/ef/96/4cef96f89c47adb23640ca94ddfb2a51.jpg')
];

final questions = [
  Question(
      question: 'Who was the first President of the United States?',
      answer: 'George Washington',
      category: CATEGORIES.history),
  Question(
      question: 'In which year did the Titanic sink?',
      answer: '1912',
      category: CATEGORIES.history),
  Question(
      question: 'What ancient civilization built the pyramids of Giza?',
      answer: 'Ancient Egyptians',
      category: CATEGORIES.history),
  Question(
      question: 'Who was the leader of the Soviet Union during World War II?',
      answer: 'Joseph Stalin',
      category: CATEGORIES.history),
  Question(
      question:
          'Which American document begins with the words "We the People"?',
      answer: 'The Constitution of the United States',
      category: CATEGORIES.history),
  Question(
      question: 'What is the result of 7 multiplied by 9?',
      answer: '63',
      category: CATEGORIES.math),
  Question(
      question: 'Solve for x: 2x + 5 = 11',
      answer: '3',
      category: CATEGORIES.math),
  Question(
      question: 'What is the square root of 64?',
      answer: '8',
      category: CATEGORIES.math),
  Question(
      question:
          'If a triangle has angles of 90, 45, and 45 degrees, what type of triangle is it?',
      answer: 'Isosceles right triangle',
      category: CATEGORIES.math),
  Question(
      question: 'What is the value of pi (π) to two decimal places?',
      answer: '3.14',
      category: CATEGORIES.math),
  Question(
      question: 'What is the powerhouse of the cell?',
      answer: 'Mitochondria',
      category: CATEGORIES.biology),
  Question(
      question: 'Which gas do plants absorb during photosynthesis?',
      answer: 'Carbon dioxide (CO2)',
      category: CATEGORIES.biology),
  Question(
      question: 'What is the largest organ in the human body?',
      answer: 'Skin',
      category: CATEGORIES.biology),
  Question(
      question: 'Which blood type is known as the universal donor?',
      answer: 'O negative (O-)',
      category: CATEGORIES.biology),
  Question(
      question: 'What is the function of the red blood cells?',
      answer: 'Transporting oxygen',
      category: CATEGORIES.biology),
  Question(
      question: 'What is the plural form of "child"?',
      answer: 'Children',
      category: CATEGORIES.english),
  Question(
      question: 'Give an example of a conjunction.',
      answer: 'And, but, or, so, yet',
      category: CATEGORIES.english),
  Question(
      question: 'Identify the type of sentence: "She is going to the store."',
      answer: 'Declarative',
      category: CATEGORIES.english),
  Question(
      question: 'Define the term "simile."',
      answer:
          'A figure of speech that compares two unlike things using "like" or "as."',
      category: CATEGORIES.english),
  Question(
      question: 'What is the main purpose of a thesis statement in an essay?',
      answer: 'To express the main idea or argument of the essay.',
      category: CATEGORIES.english),
  Question(
      question: 'What is the formula for calculating force?',
      answer: 'Force = Mass × Acceleration',
      category: CATEGORIES.physics),
  Question(
      question: 'Define the term "kinetic energy."',
      answer: 'The energy possessed by an object due to its motion.',
      category: CATEGORIES.physics),
  Question(
      question: 'What is the SI unit of electric current?',
      answer: 'Ampere (A)',
      category: CATEGORIES.physics),
  Question(
      question: 'Explain the concept of buoyancy in physics.',
      answer:
          'The upward force exerted by a fluid (liquid or gas) on an object placed in it.',
      category: CATEGORIES.physics),
  Question(
      question: 'What is the law of conservation of energy?',
      answer:
          'Energy cannot be created or destroyed, only transformed from one form to another.',
      category: CATEGORIES.physics),
  Question(
      question: 'What is the chemical symbol for gold?',
      answer: 'Au',
      category: CATEGORIES.chemistry),
  Question(
      question: 'Define the term "molecule."',
      answer: 'A group of atoms bonded together.',
      category: CATEGORIES.chemistry),
  Question(
      question: 'What is the pH scale used to measure?',
      answer: 'Acidity or alkalinity of a solution.',
      category: CATEGORIES.chemistry),
  Question(
      question: 'Name the three states of matter.',
      answer: 'Solid, liquid, gas',
      category: CATEGORIES.chemistry),
  Question(
      question: 'What is the chemical formula for water?',
      answer: 'H₂O',
      category: CATEGORIES.chemistry),
];
