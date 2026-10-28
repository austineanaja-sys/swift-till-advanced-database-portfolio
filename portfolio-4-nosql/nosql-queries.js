// SwiftTill POS Agent Management System
// Portfolio 4: NoSQL Queries
// MongoDB examples

// 1. Find all active agents
db.agents.find({
  status: "Active"
});

// 2. Find an agent by email
db.agents.findOne({
  email: "chinedu.okafor@example.com"
});

// 3. Find agents located in Lagos
db.agents.find({
  location: "Lagos"
});

// 4. Find agents with a specific terminal model
db.agents.find({
  "terminals.terminal_model": "PAX A920"
});

// 5. Find agents with assigned terminals
db.agents.find({
  "terminals.status": "Assigned"
});

// 6. Count active agents
db.agents.countDocuments({
  status: "Active"
});

// 7. Find agents with more than one terminal
db.agents.find({
  "terminals.1": { $exists: true }
});

// 8. Display only agent names and locations
db.agents.find(
  {},
  { name: 1, location: 1, _id: 0 }
);
