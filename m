Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F25EB4456C0
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Nov 2021 17:06:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mifG1-0008O9-5m; Thu, 04 Nov 2021 16:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cyeaa@connect.ust.hk>) id 1mifFy-0008Ns-Va
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Nov 2021 16:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQ/oEACOxUg1LI0zGovFRlxNGpAXzD8DrIoF0iZlUcU=; b=m+955kZ/R/7HMnUck+JijVCXOE
 eOmkp0CU8X1M98fhnXLCSgDO4hoLMc5HcTg/9/zK5+sK4x3cqOrMtvNB+y0xvJIj8Z8xFwAEUETac
 W7zeKWaxO6X2A7b1c6dsi2syjmylO+PjdYqJjM2tWWCcpfV8zDLVb3DoLie9adw6eZRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oQ/oEACOxUg1LI0zGovFRlxNGpAXzD8DrIoF0iZlUcU=; b=d
 gGxNIXvibO51JInrzopZfhCR2vy8wP6uyzJxtE1/tcy+R9gVjT0JII6V+iM5d0HpPbaaII1aquQEz
 d51tmewc4zMLMF6Rfyx6rGJqKFSCgWMF6nH9A1afeBd46XGfPf9Txs/UX5dYYFeiN4SgiUPfFJTd+
 B0gHrcNJo5pW1Ezs=;
Received: from mail-eopbgr1410093.outbound.protection.outlook.com
 ([40.107.141.93] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mifFl-0003c6-Pk
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Nov 2021 16:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LhuS1KFKVMqNC3S6BuxwDqQYHjdpi6akaRhpT6oIBvJC7tPzfc7QcZ/lQGITupFi6taMhibA/TQfHJOAxm/PoN1BHJNtYRZWI3GXVo93NMYxhm/gyXXN8e2zjpWmKKFTNXge6FP8NOPRg/ntAucFsAkmBmJxaNfvRqYXZPnlQxLaZLJK0ncbMmU8GppciSjboHNgC7P4bPASPZe8AcQNWU11KOPo8zn/S/UlR7qnJh9JaGJweozLndDt5DLrgN44z3fcSQIpOmtCtkRoT/AW3b0niMnEoTuz/GTD9wbgWCQGczTJLwOD7aBIyvcsFniXbTmxuA7rWUR7ZuIlHeJrkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQ/oEACOxUg1LI0zGovFRlxNGpAXzD8DrIoF0iZlUcU=;
 b=NQZeb+j+vk2WKeGwMSFI4dJelRRqHNSTFOZXKu99zrnMLE7DGVgw7c58fKOUW8k/F8q/JueqlmT3lWQK9J0UW4NnCEoucJCNYdByOzgRWfGxb1wN0uiSXJ5awPEhv1Wtr7gTIoO4H7IGoOcfxEIG2M3c12ShuipQRIy2fEcJl1G1HHifG2mIA6TLGwror8WtRvVLZyGNnqT7m4tsESoyuxPGtq33ua64VLJhLQNa7zPGTG3LHcewWbPdyB+ZQWwgXnCvmK25cOEwa8qUKL85sC110qLp39IYx6tWyhKLmY1Tq0orMJiUv0ZSUOxnIZfhz5CMlkJuyhpgs9H9Ar874A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connect.ust.hk; dmarc=pass action=none
 header.from=connect.ust.hk; dkim=pass header.d=connect.ust.hk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=connect.ust.hk;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQ/oEACOxUg1LI0zGovFRlxNGpAXzD8DrIoF0iZlUcU=;
 b=cua1qSfqApYC+1dnkl9m2TUkn0VkeleGuxTUy/tqAuBa/2enptiNPclkEHaeUEZVawe2y6CnkZ39c8mDHvhc5QBN0F9AjWMqqZ+tCw5JrZWSdwStn/lTNO2/FKPHlyZSk9/XDap8AyPA4rdZ0WJzwQij9IjqYbu0EFyu20K3+BI=
Authentication-Results: s5r6.in-berlin.de; dkim=none (message not signed)
 header.d=none;s5r6.in-berlin.de; dmarc=none action=none
 header.from=connect.ust.hk;
Received: from TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM (10.242.2.232) by
 TYAP286MB0427.JPNP286.PROD.OUTLOOK.COM (20.180.223.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.11; Thu, 4 Nov 2021 15:33:03 +0000
Received: from TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
 ([fe80::c0af:a534:cead:3a04]) by TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
 ([fe80::c0af:a534:cead:3a04%6]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 15:33:03 +0000
From: Chengfeng Ye <cyeaa@connect.ust.hk>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: fix potential uaf in outbound_phy_packet_callback()
Date: Thu,  4 Nov 2021 08:32:53 -0700
Message-Id: <20211104153253.23941-1-cyeaa@connect.ust.hk>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: HK2PR0401CA0001.apcprd04.prod.outlook.com
 (2603:1096:202:2::11) To TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:b7::8)
MIME-Version: 1.0
Received: from ubuntu.localdomain (175.159.124.155) by
 HK2PR0401CA0001.apcprd04.prod.outlook.com (2603:1096:202:2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17 via Frontend
 Transport; Thu, 4 Nov 2021 15:33:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c6f8ffd-faf6-4355-e411-08d99fa8640f
X-MS-TrafficTypeDiagnostic: TYAP286MB0427:
X-Microsoft-Antispam-PRVS: <TYAP286MB0427DF8C3CA87DFFA3E2CB4D8A8D9@TYAP286MB0427.JPNP286.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ahHeytbAcT+DeJvn84tA0/hTyg9kgKzw3WV2Q5bVsNK4ByA1dShEgxNAkrA5BQhtMTip2vf8C9/RLohFetF/QXY/BwA48clX/7E0yue8Zbr3ljpiEmH5vZGznOfmdeHIWaLBzTiBLI4S87pAHEAWPiF/ELYbTltt+mRmU2XVaPI70WjRMNkw5sx/gJBEhzxgAW1xkNNPAeb+qqJ/Syh0NFDkKmfns5i2QmtHV0qRgOH99Kk3GVPfcw40SKeVhqcrrQuTxKBKSZ0AeGsO4l4bF/qh1hDFVot5tRDmgGq+LdSNKkaaQEmilW/Z4S+FbkPYvX9u7Q2Ny91CRbvhCHpIzP202YCrdRNRftu+1/tr1BQDOv7dd4A6EiV9M2WNw0RFxAuG1CFApYgwv0FBpx2o7AdcACCIGxk8+NuJSmnGBLA+1w2SF5TB20fnc8qQ0jeJt7mzoBfUwAwuBo3RfCGjwyJH6k0xpKMFr/s+ZnWuOK8PxLts7cnQtAgODcZe/H+bsQxzDGNa9BKLOUsbyvh6kOt3R7mTUyR3M26Ty+mcU9bzyDLFZf2IRscMXSMYROgWf8jDao3+dXfjSbNk9dVR2U1+eDzrqsVDtxDBCzqz0Mw0Ybf4mYjjgS3RRE8Z+XllBGOp3+Lf3n0WeZMrKLjwFmT6N1vVswD4ZODedQO2FwsvgV7TYkf0Kh8mFs6uVN9GkGTGRGzfnEd/ORMkQFHMiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(786003)(5660300002)(2906002)(6512007)(186003)(508600001)(66946007)(2616005)(36756003)(83380400001)(38100700002)(38350700002)(26005)(66556008)(6916009)(956004)(66476007)(8936002)(52116002)(6506007)(6486002)(4326008)(6666004)(8676002)(1076003)(86362001)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?adwzjGNpdOw2NcmSnpW876iKrb8pvtpmduvS2LBe3qKJ62OSu6MHEMSKEXzh?=
 =?us-ascii?Q?0HzJtwmEPQw6uO3MkyAYA1V78DGxhovsUqqy1htdN9sE2D0YJKpHLXhoIc65?=
 =?us-ascii?Q?qy36yobiWYbug6z3dwsLtL1CTjYD73T3iJAm85j001B720RgAgLYQ/5ybtKf?=
 =?us-ascii?Q?o9JPwA0t156bd1AFXJpFmDvpqhaMKdbYCwgauS6YsC4bCFuVZpFWhqyEPbG6?=
 =?us-ascii?Q?/cnTpZJbyzqWj63PMmoFkSEzjJNWMGTiChp/4fQjbDtmfE3pMCFOQfBQyWY7?=
 =?us-ascii?Q?lL6rvitkDWjqWKbkf+cOmsTjDe/gLBD766To7+X/gZYMjbgem+9kLATPqHh6?=
 =?us-ascii?Q?pEClchmXXzpttygoWHOyQpNU3ofSS4Spu5RETdjtuq/KbGtPWsJg1GnWkyc8?=
 =?us-ascii?Q?ptNziz7l8BQAMSe7XccKSh/kCxfzmjI1bekaUWnm3DuK6RFhISmVufRTPz69?=
 =?us-ascii?Q?oCPYAePSW4Xjcy0pcWeMLUpO2AuxvJNQSlzPN0MrBO4k7pixmppQJHx+6/LF?=
 =?us-ascii?Q?5cffq6B4FHm6T/gSC7fd15oOFWHCBQzFyOlZkReMP6jzSDCVkVoa/kmU92q7?=
 =?us-ascii?Q?fzh7aP532e3p8kMruP5/lD4KECwbz83XNIc3pyrKH1Za7bb9/aU2pMHiMGL4?=
 =?us-ascii?Q?dxJYKsoNGCOfJbNinFmp8ueHc1ee8mMR9tSMsYH5tbHgV6ENGVaD8stoZQKg?=
 =?us-ascii?Q?EGdoWH1iG2g3OfhnY1hP/RoaOBnWLOubNhvSzGiX18Bf1YETsbtVxcwvvifS?=
 =?us-ascii?Q?P7y337nNYfR977pSH7vW14507d9qx1iKHfPxEYPMOmQmuV6uqeZdkrCFuyo3?=
 =?us-ascii?Q?OfygGuTTgpj6FPzLs3Livdpc/VEzpGcaoFPRMr24bmt/aSvLftrdQD91Dmxh?=
 =?us-ascii?Q?d5b/dSXBkNI0jrrkAhapJUQmq1DnubEydFmbsnDXZVdHqah4SXZs766zi8ei?=
 =?us-ascii?Q?nIy9k++9D/9yR97+1skcYEui3lOc+md8W1mfCRDN6cNXZyv/UKK2QPwWY8Ia?=
 =?us-ascii?Q?rP2veh013GJDq3SZyubpup4HUSJg7LuyAocNsRHuVfUY+1Ge6+s2WZcb9Zd3?=
 =?us-ascii?Q?jP55f2t5WBAJv8zYL7ogOq7eYYPCdPSt1fXAiRErOsxOft2mOX1DkVlSTo56?=
 =?us-ascii?Q?c5x5ILaq6uroPfKca9dteBGaDKdhgmrUW7Iw4Poa0ZMPHDJ9ycq2nuRv8AaW?=
 =?us-ascii?Q?X8fDxyt9XNCU+Q6/DAdvrRHSXkNiKY2KPcVmYwshZhsFTTBxVlLQRz6grwJP?=
 =?us-ascii?Q?+UdjB0ZQhhhHmwZSeS8XjV3idaEUV9PankBDkU8+3BHIuPAg2mz2DdqFhP4U?=
 =?us-ascii?Q?UKSSkxIcMaeoKRkpCW44liwLTAaoqIbfGhNZAHRN4bY2f/V79qjHfXiJsVxQ?=
 =?us-ascii?Q?yW13fHzP00+GU9NorYehPpV5OA68VZBG161r2z/LGqcA5u6XCpLSSlk1sumE?=
 =?us-ascii?Q?zt4v5EskQ9/VdZr9o5qRRVWdfwv2NxhRi/Fh4/EyAhgx0vKz+nxOk5ADoFl9?=
 =?us-ascii?Q?QkJVK1K84rrBqC6NwFhjg5URtEO/8C8TSvBDOz5b7mF7yv1p0lcBFXTHqTqK?=
 =?us-ascii?Q?yfikE6UUMUPuzk0dvgBkK3sFQBGz8TMYAsfl1VSXb8LePAEI5Wb3yhCW3uuO?=
 =?us-ascii?Q?d2YJfDomYDnaXcTdZvAXvQk=3D?=
X-OriginatorOrg: connect.ust.hk
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c6f8ffd-faf6-4355-e411-08d99fa8640f
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2021 15:33:03.4538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6c1d4152-39d0-44ca-88d9-b8d6ddca0708
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oTIt/dIA0xrSW0i4F7J4wKesARc9a7wUrZLPUGGv09BfilFXhZ2azQimwfZcuAyKgrVIOJZrPtgeuIq6IGB/1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAP286MB0427
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  &e->event and e point to the same address,
 and &e->event could
 be freed in queue_event. So there is a potential uaf issue if we dereference
 e after calling queue_event(). Fix this by adding a temporar [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.141.93 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ust.hk]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mifFl-0003c6-Pk
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
Cc: linux1394-devel@lists.sourceforge.net, Chengfeng Ye <cyeaa@connect.ust.hk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

&e->event and e point to the same address, and &e->event could
be freed in queue_event. So there is a potential uaf issue if
we dereference e after calling queue_event(). Fix this by adding
a temporary variable to maintain e->client in advance, this can
avoid the potential uaf issue.

Signed-off-by: Chengfeng Ye <cyeaa@connect.ust.hk>
---
 drivers/firewire/core-cdev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9f89c17730b1..2f47e31918f0 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1516,9 +1516,10 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 	}
 	e->phy_packet.data[0] = packet->timestamp;
 
+	struct client *e_client = e->client;
 	queue_event(e->client, &e->event, &e->phy_packet,
 		    sizeof(e->phy_packet) + e->phy_packet.length, NULL, 0);
-	client_put(e->client);
+	client_put(e_client);
 }
 
 static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
-- 
2.17.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
