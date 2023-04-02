// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Philomath {
    /**data captured on chain at the end of project

    name of person: Benjamin Liang
    name of project: Location Guard
    date/time start: Sep 30th 2022
    date/time End: March 30th 2023
    how much grant: $1000
    how much spend: $865
    credit rating score (based on project work and fund management): 90 (out of 100)
    link to project report: philomathproject.org/locationguard
    # of progress reports: 5
    NFT file link: 
    # of donors (who got NFT): 20
    NFT address: 
    Token of Appreciation issued: 120
    */
    struct ProjectData {
        uint256 userId; // id of user who created project
        string nameOfPerson; // name of user who created project
        string nameOfProject;
        uint256 startTimestamp; // unix timestamp format
        uint256 endTimestamp; // also unix timestamp
        uint256 grantAmount;
        uint256 spendAmount;
        uint256 phiScore; // out of 100
        uint256 amountOfProgressReports;
        address supporterNftAddress; // nft contract address of nft which is minted to project supporters/backers
        string nftImageFileLink; // link to nft image address (example: image/png;base64,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)
        uint256 donorAmount; // amount of individual donors
        uint256 nftsIssued; // number of nfts issued to supporters. noe: nfts are issued to all supporters, not just donors
    }

    struct UserData {
        string nameOfPerson;
        uint256 phiScore;
    }

    uint256 public newUserId; // given to user and incremented when new user is defined. Each user has a unique user id. E.g: Johnathan's user id: 16 | Benjamin's user id: 17 | Leo's user id: 18
    uint256 public newProjectId; // each project has a unique project id associated with it. E.g. Lens Goal: 18 | Location Guard: 19

    mapping(uint256 => UserData) public userIdToUserData;
    mapping(uint256 => ProjectData) public projectIdToProjectData;
    // mapping of user to list of projects
    mapping(uint256 => uint256[]) public userIdToProjectIds;

    address public admin;

    ProjectData[] public projectDatas;
    UserData[] public userDatas;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _;
    }

    function createNewUser(
        string memory userName,
        uint256 phiScore
    ) external onlyAdmin {
        userIdToUserData[newUserId] = UserData(userName, phiScore);
        userDatas.push(userIdToUserData[newUserId]);
        // increment user id
        newUserId++;
    }

    function publishNewProject(
        uint256 userId,
        string memory nameOfPerson,
        string memory nameOfProject,
        uint256 startTimestamp,
        uint256 endTimestamp,
        uint256 grantAmount,
        uint256 spendAmount,
        uint256 phiScore,
        uint256 amountOfProgressReports,
        address supporterNftAddress,
        string memory nftImageFileLink,
        uint256 donorAmount,
        uint256 nftsIssued
    ) external onlyAdmin {
        projectIdToProjectData[newProjectId] = ProjectData(
            userId,
            nameOfPerson,
            nameOfProject,
            startTimestamp,
            endTimestamp,
            grantAmount,
            spendAmount,
            phiScore,
            amountOfProgressReports,
            supporterNftAddress,
            nftImageFileLink,
            donorAmount,
            nftsIssued
        );
        projectDatas.push(projectIdToProjectData[newProjectId]);
        userIdToProjectIds[userId].push(newProjectId);
        // increment project id
        newProjectId++;
    }
}
