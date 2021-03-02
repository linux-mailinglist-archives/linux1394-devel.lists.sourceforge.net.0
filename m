Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4F8329BEB
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Mar 2021 12:19:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lH338-0007Zn-0w; Tue, 02 Mar 2021 11:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1lH336-0007Zc-8T
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Mar 2021 11:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=814zCU+jbtYbxBBfpFjuVjzIdDrMYHR5u+Tdz4KtzyA=; b=el1M41Y/1Nbp0KI+TaM3SIRkqt
 FDT5R+zuSvveDTLw2l6Wp2E9zuNtN2PY+xbJd87AzHgMHcN/q9UDuJ45H8IDSjInehF5qrgcsk5kw
 VCful9DXA5romdTxjHe84R98yHOB8ThtJ/p3+O2ushjIHVcV8spCeHz8xfqQ4M4wB9ak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=814zCU+jbtYbxBBfpFjuVjzIdDrMYHR5u+Tdz4KtzyA=; b=T
 +b2vtGFnjGCD0W0r1Am+drDqIz8jamsVSfrWIOpp24axjuGRqfSj0yVKEXAUBcwh0zZWp9S/H4K5b
 2iGK31WkbEUqXFHDQIhv4YQBPnJux5aFYLhIZ0504MkkXNSGZ58SSeZi8/gOZRvpb9I2sZKBmPgen
 3OPSMaO+ovdR4DdI=;
Received: from userp2120.oracle.com ([156.151.31.85])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lH32v-0002sj-1F
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Mar 2021 11:18:44 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BF7vd146712;
 Tue, 2 Mar 2021 11:18:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=814zCU+jbtYbxBBfpFjuVjzIdDrMYHR5u+Tdz4KtzyA=;
 b=WHnM18Pv9MMbBNIweEMKyRoYOxGZ6EoRlOraoOXC5f2rMQPZ1E2xV+0OI1Mo+D5R0cRJ
 mc4Xyy2Nd/rV3tyqlEwXx8Hp4dVFHrUTwILsO+L8uwp2R5c8icHzXfVj25iNy593LwIR
 SlgpPa0NZYJr357NTY2FOoo56PbbB5gmxcMTUbpdbptrN2I6mfCwNivRM7fyNsdT1jY6
 nFa5p4WDpciRwSekqaKiFNTbtldUfzIrMmODt6lK70l9zLpkXe1xE46Yee7oSQjCmnOY
 rZsnjzLWMX/O4JaUYBVkDnc5oQHvUwhrZlOg0Hcjs3wdxWgGYAXQ00DUuslJWRJCdKp4 Cw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 36yeqmy5bq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:18:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BEwnv011942;
 Tue, 2 Mar 2021 11:18:23 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 36yynp0jju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:18:23 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 122BILGP005022;
 Tue, 2 Mar 2021 11:18:21 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Mar 2021 03:18:20 -0800
Date: Tue, 2 Mar 2021 14:18:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: prevent integer overflow on 32bit systems
Message-ID: <YD4e9XOD8JPlJzxW@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103020094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 clxscore=1011
 priorityscore=1501 mlxlogscore=999 suspectscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020094
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lH32v-0002sj-1F
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
Cc: linux1394-devel@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In TCODE_STREAM_DATA mode, on 32bit systems, the "sizeof(*e) +
request->length" operation can overflow leading to memory corruption.

Fixes: 18e9b10fcdc0 ("firewire: cdev: add closure to async stream ioctl")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/firewire/core-cdev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index fb6c651214f3..314de0384035 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -587,6 +587,9 @@ static int init_request(struct client *client,
 	    request->length < 4)
 		return -EINVAL;
 
+	if (request->length > ULONG_MAX - sizeof(*e))
+		return -EINVAL;
+
 	e = kmalloc(sizeof(*e) + request->length, GFP_KERNEL);
 	if (e == NULL)
 		return -ENOMEM;
-- 
2.30.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
