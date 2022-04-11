Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3834FB456
	for <lists+linux1394-devel@lfdr.de>; Mon, 11 Apr 2022 09:02:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ndo3f-0002Nu-MY; Mon, 11 Apr 2022 07:01:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1ndo3e-0002No-Oi
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Apr 2022 07:01:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CMzxTsvLqnwp3Z4VflXK91vlKkFmw5BQGBvThaYTqlU=; b=Vz9BTK/2pORCz6iwvSMVMHDYxE
 EilN5hG3YY8jtgeGaiKPuUixOG8GH4j6Lc/4KnHYF2YVnE4bm2E/2k5ANuvKzlWdnBwmuHnjiq+CT
 JD+a5m0x4bXcr8Ybx8uzar49TtvAjYvfy6jr4hgKvHQTW5Lc4d2UU62bDcoccsu+kONs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CMzxTsvLqnwp3Z4VflXK91vlKkFmw5BQGBvThaYTqlU=; b=k
 Umoxv+teowbZ+e1udkralib2VUvnEIRWfYyBfppXiRgopa6l+AYg55DAPYq5ctluvLMl4Lm5Y9qPW
 i6DymBG73iJKEixpUoYeKsG93nZ7IoD2vRao8uqb0+u2iGTqS3eAOSwiTrc1oIW9knH9VwmlW01oB
 wY2/ZXd0g76UXtVg=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndo3U-0005mH-3G
 for linux1394-devel@lists.sourceforge.net; Mon, 11 Apr 2022 07:01:53 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 23B2RtjU014133; 
 Mon, 11 Apr 2022 07:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=CMzxTsvLqnwp3Z4VflXK91vlKkFmw5BQGBvThaYTqlU=;
 b=bLK6pXjzKJZMsKrxhkoBPbOWnk+iYYiXZR3aAy/b9YI+X5SFYZqqRpRdU4A/cUxiDVA8
 DtfjQZS1mWEIREhojUKvD1ymSQ+xXUjl8qSMdT9X46OAY6WV0ze/KfO3c1kwFS90g36m
 Rk5Dd4vLReHRtoznIXptI0iytRGJnROllwwKpE6frve8QSInfEJUwYkZXj+VjpLuucLi
 Y8hirC88CRYHBJez7nsaf3xZIBA8DrvEa9z0SA71xOJl543GfFNmhpvw7kMKQluPISow
 pQY6Z02zMMt1GzF8/FropKT+2F52HI60CcGKSZEy+No5Qh+92sqP/Vx3hamBnQgGBqyC UQ== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com with ESMTP id 3fb2pttge0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 Apr 2022 07:01:38 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 23B6ulsE025420; Mon, 11 Apr 2022 07:01:36 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3fb0k1ejts-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 Apr 2022 07:01:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iisdHieow2Howesk6BL+rQVi33A8QuTNsLMbrpZc9nJhqDVhaBgHG/DcbF+dTGuu4VoDHj48lLApgzcvK+cRxOo+n8rb1NvXeDMYrVGnXS8WVPojbNmBK0Q5YgPaNo0KgRCs9/g7YLYE40ybqp5/9BZLOJJ+rjgv7e7O64eF1ic5VrFI1dCL5MC9o7nNOih3gVPaOYnJyaVMr/9lh1C9FfDHqLrEfK5m9FqyebEhIc5vqF+H5hVHvUsVoY8ZMzmB7GcxO71bVpWjlepMG+pPy3jFTDDZdNWiwzn2MBsvEzPWCLyb+dW9UPxaMrOU3nO7iGIIEb7dOGfhngh3f9gdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMzxTsvLqnwp3Z4VflXK91vlKkFmw5BQGBvThaYTqlU=;
 b=EKXwrQdg7ZzkwTJdfQGzNV15hetQLnIKLYpvYAhmNQ80ehOEo4rHyPjBWqV41sDrjX7mCIelgws7ANUSjmM0r+nuZd4ZlmrtYMycT5PqpGaNr2n2SB98tVTpHIACNFUv1WOXLVF+vjK6676pzxFpPgcmpux5YF9hyDPztPUFdoVTy2L0FBq6fdTABSprScvye4BdtQACHX0p3q1Pspnm0kuFMlv84WAi7CpTex5koJzh+pO4PwTx0XorRkL6KHkgLphVhOKKM//P6iJwgxPvr2sjGqn0UTX8tYbVIXYV2Wg8GtmfvDnK+/awCXs1aHXhejtsSCGiALYX7ygb2wCSbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMzxTsvLqnwp3Z4VflXK91vlKkFmw5BQGBvThaYTqlU=;
 b=yqt+IahtTFpNZracbSKRB8eDw9QPC8MBYFIq+RVSUf0UMnSlVx+H2GUxjYrxOy4KPI9oe1C0mes/N7oNgK5BuSx8VHM2o0VEaGb39Ekq3XMhCRBbLNRXKH1pj7BOYtthqcIIM4labG72506W96uxx9TRtF7E54LlaviUEbeYGEk=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com (10.174.166.156) by
 BY5PR10MB4306.namprd10.prod.outlook.com (10.255.126.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.30; Mon, 11 Apr 2022 07:01:35 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::b5d5:7b39:ca2d:1b87%5]) with mapi id 15.20.5144.022; Mon, 11 Apr 2022
 07:01:34 +0000
Date: Mon, 11 Apr 2022 10:01:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: o-takashi@sakamocchi.jp
Subject: [bug report] firewire: add kernel API to access CYCLE_TIME register
Message-ID: <20220411070124.GA12881@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0059.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::10) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47ed4800-6136-4af6-1a38-08da1b891d39
X-MS-TrafficTypeDiagnostic: BY5PR10MB4306:EE_
X-Microsoft-Antispam-PRVS: <BY5PR10MB43063C626B54E816A555D0B48EEA9@BY5PR10MB4306.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: df2DV8Vze0ADSC2AwBlUg/36LnYxGnIO6SGVNEk+rVapxdPVv1wuU/K0r9+/h0noyEfJ3CXQfP1mY6UFNTwB7QcBJvsp+BHiBUPelSSLLwr7kpfNjxGw9VfTNWJ0aFWfBoSfNWm2iXnIDr/4i28gkpeb1WjJmiu7hPZAYYsAHRdL/uetRn5De0LSO35rvcmz5WmaptZjbuSXHD/HNLAf0Ei0WnIQQojJ77o7DPiUjkrTrcAJd5CTm9mYIOX6lpoDO78QkZAX5US9dpqP74pzpXEqwAaDIyYdbL77gp7Q3+IVvrLYpr+Tm1hIQKrl7ujGJUdmnSFNgOysG9SExaSVaUKjAiKy7I4s6QhqlCIrJW1YHHg8FUfhaCc66r4K9pvDu2k4jkMA8vMgOJorrFjjkpNWwCS+m3IF5nTXHC+U1jh49yGhQWd37vbTjtY/ECeessDaCsFkaE6VtSC6JRvDAEUIHlNYu+lR7eOwXArJQFdMEXNxjlnzrRsDh/qaca2sj6x/pi5RKmuB2WjeGogL3bHtvAkkO8cslBOe26NpH5PeJZmqDPJr9VEqCHtmGYDvsPWTLwHNVi2HNcebOO/8og3xUUnOKOlzUYOAZQ2qxiJy+LJ4I9MnPwbeMMfcpa3vtvcKRgLNx8Cp6ItWFLIr624+KtadguxTo4w24lkN2qQ6XExTuGQF949eifr88qVH6igDBXmEc8OLg6pZA6fgmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(6512007)(9686003)(52116002)(6666004)(6506007)(2906002)(83380400001)(44832011)(6486002)(508600001)(4326008)(8676002)(8936002)(26005)(186003)(66556008)(66476007)(66946007)(33656002)(1076003)(5660300002)(33716001)(86362001)(316002)(38350700002)(38100700002)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DvvlceC0EDO76aez3Iuxx0znx+SNsi/BK6v+z9c11IZEdjiVGf3ovubwQltY?=
 =?us-ascii?Q?KpxAyiYHeNB22D1/wtceXyfRbaCstrvkVwULjudKemDTBGn3pn652JjjDBPj?=
 =?us-ascii?Q?U2HViD4s6TuZaKHdjZSnDjeG6ta+YRrToqDneJSQTwqwZ3WeBhQ4BxNWJ2e7?=
 =?us-ascii?Q?v4csvTIhLN1LVBhv2JfFL6Sg2+5xSvURl+eWzeQRYCbKu6UKcyHayFkLkxfH?=
 =?us-ascii?Q?txo4k2wMMCKufYswgDcgmoneCQxPzVHOtvY85rigoS/ZI32NqasUodG63cM1?=
 =?us-ascii?Q?YM0RFBrwR/9m99QpyFAxeinp7OI6uhoWAqeGZIvX4AetD+h6LylxOEiVOEFS?=
 =?us-ascii?Q?e6WgpXAlScsNn+PsZSn4Tl/MuguaOK5KA+1TtV/Am2BB1/VNuDVhhlan+vuT?=
 =?us-ascii?Q?nMXbZO/BHKPpcsQOgBMO3y8Nzh60U6WswfMyL9m5FH201LMr+IZ+5sspIvQf?=
 =?us-ascii?Q?F2+pdZSE/dVBTyDbpeaU0LWu34pyEWiDa5cXKIWCo9fQ3pKCIrJE3EaId6rR?=
 =?us-ascii?Q?peg9M+Vd5pYWmNwoh9gvW1P+jbQyWyoX7FlWI73E1TLZqU6ow0uG+H5B86hm?=
 =?us-ascii?Q?CkysnlDhCtxMkUCSjVbZyh4iy+MpapF+Ag0tcIEodYMcQ4k89T3SzfSdBaQt?=
 =?us-ascii?Q?aCRmbx8Dk7rSe0xGUwCZJM/XCiDZiugT8Y6cazaJV9eXVITsbwfxw5WqhDfw?=
 =?us-ascii?Q?RSlmBgs9vrBjlzl900zEiP5EZYWL8pkJZFbw736/oO9xc/tikOrB2ze3Z3vq?=
 =?us-ascii?Q?9Es74y3gjRWzhKfqTddsjJf+/i48M4/hobFLh781M+2YZmA0C4saY4LyaSEy?=
 =?us-ascii?Q?y+7Rj+N1ohejcGX7/FAT99DFXa3qKeb4hOMQT0EypoTrBiVrvwrFgzDwPNKB?=
 =?us-ascii?Q?XCZsok4arVUTmU/WPVbtRmYRTm5Y6i3YEZZd+nhsdbJytkEdpPlmV5Ce8PbL?=
 =?us-ascii?Q?e4efd6cXxKAR9YPUeiVUwQHYYZqK9m0mhgICIwaudSlNBxLsXf7rEiXSFz1D?=
 =?us-ascii?Q?y9+fHUNsj0kOe0DdTkKZuhCDH75d7pZrEuEc2xeWG+ZehFiXPqgt7EGgbgRH?=
 =?us-ascii?Q?e1CQ7XOQDdZZZFA3q7iIjGuVL2Q1AVudbVFzBgU6IK0tc1A2bMfRoBGnSrWN?=
 =?us-ascii?Q?KKimtShcH9V70TLaYR8UAYu8vIL8z76qjH5SHgfsRmH5vfmwb5AllhGLiKCp?=
 =?us-ascii?Q?0HxWPcouXcFtxS9jyEKVpsmFJV6xkaEWLVG70mFSydhCRD609N4cqIXRlcmp?=
 =?us-ascii?Q?zMicgUQDangT7MdbHOy3XNliaerO57VGA/0bm+Nk4kIsWOHp7HpOiXnCfZUc?=
 =?us-ascii?Q?moSCAfIAzeKgulZfWHbTjhBnAx2W9/w9Fzggo1sXk0LagqHYhoEnrtabzm7L?=
 =?us-ascii?Q?D2VlleUs4AnL6snkMdvF7K75dnvXWarpGwH6dg9c5LlVwhAs7+vGslng1qxM?=
 =?us-ascii?Q?IpTtfKmVbNw/Z90ZY3mAEXz0l558Js5qodmG/4p1owGhQ2ICv/n4RwQOB+eI?=
 =?us-ascii?Q?N53rTbRidqKOd4kLSXVcfFvFn2/jMgjRyo/NLrQfQo87fihR4mZB9tVio1Gd?=
 =?us-ascii?Q?krLR6R9OXwyxumJCxTkjon2S1pBUuZOpBZvxtTe4VRlEDE6OlmcyZwOvnUHu?=
 =?us-ascii?Q?5vSRSr3N1nDMhyDvlPX9tL4bRNgIERFFh9d1UPLaR49xpK/N1OXeQ0PHvQLP?=
 =?us-ascii?Q?ZtBvXhv8Q0ZNPdT+wBOO6tNCHv8VPR6GsQlq6FvAQhAEuKUXAiN7sl4H2B2z?=
 =?us-ascii?Q?nAV3ReuObE1Lu6LKKpRiRF+QAkxvgLw=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47ed4800-6136-4af6-1a38-08da1b891d39
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2022 07:01:34.4378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q1jZX8Qk4oQvm2kclliRyWtlexyx32qw8mNS6pKoqNArnvl405VYQnMX6TcGBWmIysHn32kHJsxSu96unBWXDJ7XKVXMLI1RnwU9QSEi05Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4306
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.858
 definitions=2022-04-11_02:2022-04-08,
 2022-04-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204110040
X-Proofpoint-ORIG-GUID: VGJNHmssQqu3dCFhN5Hu_Lpa_243S5Vw
X-Proofpoint-GUID: VGJNHmssQqu3dCFhN5Hu_Lpa_243S5Vw
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Takashi Sakamoto, The patch baa914cd81f5: "firewire:
 add kernel API to access CYCLE_TIME register" from Apr 5, 2022, leads to
 the following Smatch static checker warning: drivers/firewire/core-cdev.c:1235
 ioctl_get_cycle_timer2() error: uninitialized symbol 'cycle_time'. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ndo3U-0005mH-3G
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hello Takashi Sakamoto,

The patch baa914cd81f5: "firewire: add kernel API to access
CYCLE_TIME register" from Apr 5, 2022, leads to the following Smatch
static checker warning:

	drivers/firewire/core-cdev.c:1235 ioctl_get_cycle_timer2()
	error: uninitialized symbol 'cycle_time'.

drivers/firewire/core-cdev.c
    1209 static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
    1210 {
    1211         struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
    1212         struct fw_card *card = client->device->card;
    1213         struct timespec64 ts = {0, 0};
    1214         u32 cycle_time;
    1215         int ret = 0;
    1216 
    1217         local_irq_disable();
    1218 
    1219         ret = fw_card_read_cycle_time(card, &cycle_time);
    1220         if (ret < 0)
    1221                 goto end;
                         ^^^^^^^^
"cycle_time" not initialized on error path.

    1222 
    1223         switch (a->clk_id) {
    1224         case CLOCK_REALTIME:      ktime_get_real_ts64(&ts);        break;
    1225         case CLOCK_MONOTONIC:     ktime_get_ts64(&ts);                break;
    1226         case CLOCK_MONOTONIC_RAW: ktime_get_raw_ts64(&ts);        break;
    1227         default:
    1228                 ret = -EINVAL;
    1229         }
    1230 end:
    1231         local_irq_enable();
    1232 
    1233         a->tv_sec      = ts.tv_sec;
    1234         a->tv_nsec     = ts.tv_nsec;
--> 1235         a->cycle_timer = cycle_time;
    1236 
    1237         return ret;
    1238 }

regards,
dan carpenter


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
