Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF5481025
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Dec 2021 06:44:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n2Rkz-00005C-DA; Wed, 29 Dec 2021 05:44:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <0447@softqq.onmicrosoft.com>) id 1n2Rkx-000050-FT
 for linux1394-devel@lists.sourceforge.net; Wed, 29 Dec 2021 05:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SSq/JoExYejiQACjZGll+bi47gbiEVrE/w6wRnY912w=; b=FcVo4U//g9PQqvRnJ2p4Bk8N8A
 sYjQSD0cWFgCAYXpz3F4TtTLpflwxh1tPJ8W2qyxmfc0uL+uW/0Qjnetss+g3t+2q8dC/4bi6nnOM
 gmO8UXliXlwp5QxWa0Hj3dJU2sg038HOjYRReHxybFPzkSL03skYuiUYMfMjrLcdcnCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SSq/JoExYejiQACjZGll+bi47gbiEVrE/w6wRnY912w=; b=P
 9HFD2f9rzlWz9AUATqy8I3UpcEWuWtxhYXXjL29jkI/XYVm0kA6I+pKYJoFyykBOuawSOYQ1AU7GB
 VhVoxU91KeEsM1GK/vHPCL7IwTTtXffDwOFMjJ8Oe10QKKJErHDEyIpsSBzuslof1HJsHmjLgI8ow
 /dU2DGj9OTMvmTIk=;
Received: from mail-sgaapc01on2094.outbound.protection.outlook.com
 ([40.107.215.94] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2Rkt-0003mh-7C
 for linux1394-devel@lists.sourceforge.net; Wed, 29 Dec 2021 05:44:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWikHLw9BSQaUNCLlgOOe01ljK5q7bovhjF5UAY7Ewzxnwm9sN7/lTEUFSRear5Woccj0PPKjSpnOlH8UcoVL6thlkiZFrIjTmKr1lv7Fk6KZt8ClYvJnkER3XQ5tqbYklZSuM/Qit/OiFmd7mfCmZhPZD1votjBPPsVBvVwbHA+/r3WvzayQmu2tEiTPveaqSpdCJ9jJldgsxTQ8TRk7lWbvZoKtkTE/IPye5YXGrDUv3lPq3sHr20joEGs2XU73kWP70ZlQ0jZXGL8lU55rFNbPfVm5AkG61mP5WFBLmDqJXtayUV1F8S8mtbNiO3ebHgAUbJ8AE3mU0Ejk15IPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gP7p6iPYC1z1kAdEyRnrKjE0woi0FKJMXs1g841WxP0=;
 b=WKSx1Gft/syqHhN/QyKY2FaVj9T8mso8btmvLlRu750hifwTJ6Os8s4rlEd7ZsyrIiFBrbrEvNKt5dgQznVb7gg8fwVYV7ZndGSvGwbrgQn/M6jXLbko1eAyUtNkmP9NIQ+nvjTKmkNpTUiIFhbhrZy/qnl3Fh/b+elgwSk4sw5JQMnaX6t7ezwXwso4W09VLa30Uv9sL9atk5a8H0dsVH6UWsOlyYrk9VClciUD3EuQXB1KdPSiDlkaQ742l+xO4ngUDMWzyQwq9jA2jg9iT5aTVGZrHfr5Ma4SnNwNqvrn4SWQVAoCRLbxWSBpeBkfzJ1PsyI1KD9i6edbDWA64Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=softqq.onmicrosoft.com; dmarc=pass action=none
 header.from=softqq.onmicrosoft.com; dkim=pass
 header.d=softqq.onmicrosoft.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=softqq.onmicrosoft.com;
Received: from HK0PR03MB2852.apcprd03.prod.outlook.com (2603:1096:203:27::10)
 by TYAPR03MB3152.apcprd03.prod.outlook.com (2603:1096:404:22::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.7; Wed, 29 Dec
 2021 05:43:58 +0000
Received: from HK0PR03MB2852.apcprd03.prod.outlook.com
 ([fe80::e1ef:5517:5a9a:6431]) by HK0PR03MB2852.apcprd03.prod.outlook.com
 ([fe80::e1ef:5517:5a9a:6431%3]) with mapi id 15.20.4844.013; Wed, 29 Dec 2021
 05:43:58 +0000
X-Mailer: WuTywNPBDn 0
From: "=?gb18030?Q?xGY?=" <0447@softqq.onmicrosoft.com>
To: "=?gb18030?Q?linux1394-devel?=" <linux1394-devel@lists.sourceforge.net>
Subject: =?gb18030?Q?=B7=BC=CB=BC=CB=AD=BC=C4?=
Message-ID: <282e54afb620edbe0f2c687327cab24c@softqq.onmicrosoft.com>
Date: Wed, 29 Dec 2021 13:43:53 +0800
X-ClientProxiedBy: HK2PR04CA0087.apcprd04.prod.outlook.com
 (2603:1096:202:15::31) To HK0PR03MB2852.apcprd03.prod.outlook.com
 (2603:1096:203:27::10)
Importance: low
X-Priority: 5
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ddb45517-6b21-40ec-d482-08d9ca8e354a
X-MS-TrafficTypeDiagnostic: TYAPR03MB3152:EE_
X-Microsoft-Antispam-PRVS: <TYAPR03MB3152025DC2740118C9891703E7449@TYAPR03MB3152.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gk+T2VFEJ9kwW6jVz+lG4MoeqRGEfGNgnjliQCjewH/7c/ma7w6kpJNOnTt7vNSMX3x+E7TzuT2w8xzj8I1SmYGsoemce85yGuA46LQcvDSahO3xH/tpI7eWMlf/teNNydvpJzsWCamlSxWTjw73XvQAISk9Itl2qXK+1zt7Bi1k8lsjuFwXWbjW/61iJ2YLD/EUwTB5IRgYm8EhfeGJ3QCvkESLoarLqBbpg2BsJ88OzDGUNWc0ZrXyxa3SWeie/pCE93rggHBpsIhfLMDyabYNzgE5vaS7PUNVeBSM0f0VN+YHyUWSCTh77Rbvj56Y6Fjd/q6Dn/QC2PM6FvvQqQGi+wQI0Cdpt1myBmTEx6qhJvcQy2YqdxGRK3G/vDMRmWFzjNjxzo55fV+byzX4jTNUHXh99yIdI9ECPjNCjk3DI++pmFPGWpkjnr7RZAtOspvBLnC11tmbTEGDcp70o4++UXEvVPPLXt6WPqG1s0i5lnx3ZyMAmR9IbqaqNgx/Oaz9uZNcyTGuSVYN0WDDorrkSaJu6FGu9r0N0FGXdtPB/WxIcsTSipn8/1FNJWVkB8dSiVywA42O8WVURkD6GFL4OfAhncQ2KiESftFHpYg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:zh-cn; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:HK0PR03MB2852.apcprd03.prod.outlook.com; PTR:;
 CAT:NONE;
 SFS:(13230001)(366004)(396003)(346002)(376002)(136003)(39860400002)(66556008)(66476007)(6916009)(66946007)(6506007)(8936002)(508600001)(5660300002)(52116002)(24736004)(38100700002)(6486002)(38350700002)(6666004)(108616005)(26005)(186003)(86362001)(558084003)(6512007)(2616005)(2906002)(786003)(316002)(224303003)(84722004)(88722004)(20210929001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?GB18030?B?RFlKTytrK0NhM0ZTZ3lvblczNUJCTThoV0M2QndNbCtJZFBlbnhDTDJVaWxR?=
 =?GB18030?B?L1R6bFJ6Q1hnQTVDejVDTTZxU1FEVldvWGdjNFg4a2grTjgyWmIwazA0M0JM?=
 =?GB18030?B?Z05KNWIvbVVmM0pXY0tBbUwxUTIwSU1Qa05TQUU5WnpuckVOOFExb25ybzBH?=
 =?GB18030?B?dTRQYi9VOTVGU1ZNeTlRTGN3U2I5cUhyRGRvWGJrU2xBUUZUWkF0RHRFZkFV?=
 =?GB18030?B?cS93WTQvWlBqbmV5MU9pNkhTdVFZREpVb1pVNlQ4QmZ3bWVzYkdVbS9jUUR1?=
 =?GB18030?B?bzV6NXYrbjlsdEJWdnVwVHFhemx3YlMrVHgrb0tpekJZVHVrcDNXenJXL0NG?=
 =?GB18030?B?WTlGdjNxMEM2M0RDY3pVU2RrU0dURWFNWFNzUmVvb2VhZTRPYTlhMEk3dmhP?=
 =?GB18030?B?dXcyYUMxYk8reVhMcERrQlYycUlkMkI2ZjNXVFIrZFpVTk5YeVd2c1JKc3RJ?=
 =?GB18030?B?dHBXZkZEWkNxWS8vVVdseFcyUkdyWmt2L1drNWMzcUJkbmVTSmtJOTdSSE9z?=
 =?GB18030?B?UExTMCt0MCtmTGNJWjM2UVJYdGdSV29xbVl4VVFqNTlSNWQ1MkZCWk1iMlBZ?=
 =?GB18030?B?L1FzbzV0NFpHU2M2d0Mwam5YNzhOV1Q0TUZlTnp2bVM1UDdaM3VLVGFlNkF1?=
 =?GB18030?B?ZnJaSXU2L0NwNjZheVZSVkFsZ2ljZkczdzg3akFBdjJJTmtLeTVKT0VBYmdi?=
 =?GB18030?B?RklUaG9YNS9hb3ljd2hGNkNUMjVKbE5SekF3RlZpVDVEVVZYUHlHTHVxWHRS?=
 =?GB18030?B?K00vaG04V2pMckxiUjEzOEFSTldmMU9SUzRSMWNNTkFONC9TZEovbS9kMUh6?=
 =?GB18030?B?N2k0UStXTjNPWmR0OEppTWhudmlCWDhrdDRaaUk1VGRQazJkMVdUbDlUYTFO?=
 =?GB18030?B?RXVzWVhrRHJpRUxaVVg2eVBXcXhQQ3FnVG5waDFvSkNBcllNdFhDclBUdVZv?=
 =?GB18030?B?d0ErZkpnaWtDMFEzNy9pTGhCclFXQ1VXWmNEeWlJWWhHVWUxdVN3MXdkZ2dz?=
 =?GB18030?B?Z2xVbVVSVUltVjBFcDRTT2c1MkRzb2ovTDN1YXhQUjU3UUtzcmdIV0xBNHRn?=
 =?GB18030?B?bkI2Nmt2Rmh4bGYySkQrN2VRS3BBNUx2VXh6RFVnQ0ZNOG1NdFRQNUoxNDNG?=
 =?GB18030?B?SVgyUXU5MGVVYXU1NG9yY1l4eWhqd1F3MU1VYjI2Z0s1OGsyN1RpNVZrMHB5?=
 =?GB18030?B?N2RVOUpzS0NMcGp3OTJQWXNtdk1Dem1mQURhNlN0RC9CSVE1MXYxcmpxbm1y?=
 =?GB18030?B?M1JwemEvSXpNZ0xrb2lKUUsyUmlLTnN5bnhtaHhRaDVvZVVvVHNmQ1ZwOWV5?=
 =?GB18030?B?WHBUcEgzekFDeFpTVXdZNGo2TjM2Zk5WdlhJVXpaWnkwNWhMWE1FbzVXWWRI?=
 =?GB18030?B?OHlNMmI1bks1SE4rb2srN0RTbkhBb2F6YWQvc3lad3NCOVNGWHVBUnlmU3NP?=
 =?GB18030?B?UDF6KzJFM0M0c0dhQi93YVdPbG5iay91SlFWUW94MkgvUzNxUGs5MVNlTUhO?=
 =?GB18030?B?TjZuM1ppK0JJSUluMWQ2cy9xUms1Zmc2K2JHMy9xNXU1QW1qT0dFSXVsSUx6?=
 =?GB18030?B?aS80M2xSSFFnTE1OcWpCWVhQZTA0bXZKa1BKTUViTDhOdUpqLzc1T2hGL01j?=
 =?GB18030?B?WkgvRFZHQUVhRTJGekVLVS95VzU3aE5ZSy9PK1BjbDFLS2I5bkd0RTRYeDFK?=
 =?GB18030?B?bnBzZUFpaUVGRk5TaTdwMnBHamFOeTNSSGpZMTZiVk9oZ2JqdGhzTmRLWlVZ?=
 =?GB18030?B?TzMrcE5sZFBkaUx4NlRMRDN1VDdFQ21zY0RSdCtYUTJJZXl5c1pReWN0YnU0?=
 =?GB18030?B?ZUczaGxueGNXSGs2QWxHNFJnazN4cGdzQWJCTHlyY1BoaE51aGJkalR5UVor?=
 =?GB18030?B?WUJGMER1TXNjNjVDWDVLc0czejJURk1QK2RaWWVPWXUwNVVXNFZVOWNjd0NK?=
 =?GB18030?B?N3I3c3phS0tJZ1JkNHk2emh1VlNWbHA5Q0xOK0hwU1J6ODNuVmRMRXNKMVFG?=
 =?GB18030?B?Y2ZWVnIzTWcrMzduMGV6bVN2bS9lSVltaG0xcytKMXBVRVcybTNpeHBkMm5W?=
 =?GB18030?B?c0h3SVRMcVVFL0JxbjJYNUIwaDI5dGJBOFhTMlBOYUloRVVZSVUwazFRQTFy?=
 =?GB18030?B?M3BQbVpLUk1MNG9CN0l0RGx1UjIxT3UrQk9Yb0wwUjUyeWV3V0hoL09TdStP?=
 =?GB18030?B?dG9lS0VjaGsxQ3hIRkhOZ0VMNUdPU3d2eEwwdFUrL2pnRmhZbmVhb0QyUGYz?=
 =?GB18030?B?TU1UQ0pTVEd4STRVcUwramtCS013PT0=?=
X-OriginatorOrg: softqq.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddb45517-6b21-40ec-d482-08d9ca8e354a
X-MS-Exchange-CrossTenant-AuthSource: HK0PR03MB2852.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2021 05:43:57.9774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f32bdf33-ab3d-4765-8e7c-e6c7b5cf9545
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LZLdZotS614YtTkiw87P0cu3jwXswBQwR6vzG3szyFeug6XNQfpSl4hTEYB/okoTNtSMG2ocZvobDh/v37g6I5BggLUtwS1RECJ9hHnkdaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR03MB3152
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Ô°jÆ±£¬¼Ó»ÕÐÅ£º18800442453 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.215.94 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.215.94 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [0447[at]softqq.onmicrosoft.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [0447[at]softqq.onmicrosoft.com]
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1n2Rkt-0003mh-7C
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0652873021655682953=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0652873021655682953==
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030"></head>
<body>
<p><font color="black" size="3">�԰jƱ���ӻ��ţ�18800442453</font></p></body></html>



--===============0652873021655682953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0652873021655682953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0652873021655682953==--
