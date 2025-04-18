// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderSystem {
    enum Status { Pending, Shipped, Delivered, Cancelled }

    struct Order {
        uint id;
        address customer;
        Status status;
    }

    mapping(uint => Order) public orders;
    uint public nextId;

    function createOrder() public {
        orders[nextId] = Order(nextId, msg.sender, Status.Pending);
        nextId++;
    }

    function updateStatus(uint orderId, Status newStatus) public {
        require(orderId < nextId, "Invalid ID");
        orders[orderId].status = newStatus;
    }

    function getOrderStatus(uint orderId) public view returns (Status) {
        return orders[orderId].status;
    }
}
