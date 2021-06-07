Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5839E041
	for <lists+linux1394-devel@lfdr.de>; Mon,  7 Jun 2021 17:24:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lqH71-00024m-O7; Mon, 07 Jun 2021 15:24:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1lqH70-00024e-3y
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 15:24:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4sFmb8kR3sLgxJUGMPdsPKiuG7N+rl3vjJFNPkixq5M=; b=Qrn6hNR8uJNbJzmgydpEXNLkyI
 GgFivUCxMe+0tlCt6TOMufRbEsfSbmu5gaTOWtO8c/QZn8X841rcgj7efEEsGQVRVvcUzzr9OLTg/
 GYU47bwbCyU+O/VuMPtI5CGaF7gdcaAh/a1Xia+YKDPBu4PtodSXA/pcnRxI4IrdlFNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4sFmb8kR3sLgxJUGMPdsPKiuG7N+rl3vjJFNPkixq5M=; b=c
 +AMTsYjjifABLt24rjttvYpQErKr5wNyFODjbN3K1WpoH/fm6IN5KO4Xv+O3reAT99pN28PlCAKBv
 UvbhQM8HtBoHzfM++JBNg/Onhtxdn6dMrRym7HFRuWeTZZScy4asVuAaTuF8Ek4nhLXv4eD9tHQ1r
 THTRCeM3yH5uGd9Y=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqH6x-0006HF-NC
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 15:24:24 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 157F9lnX040027;
 Mon, 7 Jun 2021 15:24:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=4sFmb8kR3sLgxJUGMPdsPKiuG7N+rl3vjJFNPkixq5M=;
 b=lEAjeivppGVHdmeurj2xDCwuQRHrhJS4W1xqcqRHYMFWZ/cC89wTOAl1YMYoyTeQrihp
 YKWOmOaeFavn4oh1il0sDrpqSC6yHSmUDUn73Z4qqo/Cehuc0PAMETLDHgdJ0BQ15foD
 Hsa8WsPUK7yd6128ddVoaI9TmLBTc01GcRg1ZRp43XCwtlgy5kk1Q+O4oxMcUnwJJFm8
 c/mKig93imF4Fb/o9oDvq9s472IZE89HOaAbbnQvaNob/cXT/MZQcetCBEpHRwu0goUi
 J8Pq1VzhKydbAI+z2qY3tcxbRQcUESEEDcTh2XKdY7eWZ/MGHSdlf4KK6UvbR+Ch3q2A Kw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 39017nbckc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Jun 2021 15:24:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 157FAKjo060030;
 Mon, 7 Jun 2021 15:24:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 38yxctxc37-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Jun 2021 15:24:00 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 157FNuit020067;
 Mon, 7 Jun 2021 15:23:56 GMT
Received: from kadam (/41.212.42.34) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Jun 2021 08:23:55 -0700
Date: Mon, 7 Jun 2021 18:23:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Luo Likang <luolikang@nsfocus.com>
Subject: [PATCH v2] media: firewire: firedtv-avc: fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <20210607152348.GX1955@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHaulytonFcW+lyZ@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10008
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 mlxscore=0
 spamscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106070110
X-Proofpoint-GUID: 3c61_TwFR6Ys6jEm28ymvr2QWlZRZP6m
X-Proofpoint-ORIG-GUID: 3c61_TwFR6Ys6jEm28ymvr2QWlZRZP6m
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10008
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 spamscore=0
 mlxlogscore=999 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1011
 mlxscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106070110
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [141.146.126.78 listed in bl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lqH6x-0006HF-NC
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
Cc: Yang Yanchao <yangyanchao6@huawei.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The bounds checking in avc_ca_pmt() is not strict enough.  It should
be checking "read_pos + 4" because it's reading 5 bytes.  If the
"es_info_length" is non-zero then it reads a 6th byte so there needs to
be an additional check for that.

I also added checks for the "write_pos".  I don't think these are
required because "read_pos" and "write_pos" are tied together so
checking one ought to be enough.  But they make the code easier to
understand for me.  The check on write_pos is:

	if (write_pos + 4 >= sizeof(c->operand) - 4) {

The first "+ 4" is because we're writing 5 bytes and the last " - 4"
is to leave space for the CRC.

The other problem is that "length" can be invalid.  It comes from
"data_length" in fdtv_ca_pmt().

Cc: stable@vger.kernel.org
Reported-by: Luo Likang <luolikang@nsfocus.com>
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: Change the limit in fdtv_ca_pmt() from "sizeof(msg->msg) - 4" to
"sizeof(msg->msg) - data_pos".

Oh, another thing is the data_length calculation in fdtv_ca_pmt() seems
very suspicous.  Reading more than 4 bytes in the loop will lead to
shift wrapping.

 drivers/media/firewire/firedtv-avc.c | 14 +++++++++++---
 drivers/media/firewire/firedtv-ci.c  |  2 ++
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/media/firewire/firedtv-avc.c b/drivers/media/firewire/firedtv-avc.c
index 2bf9467b917d..71991f8638e6 100644
--- a/drivers/media/firewire/firedtv-avc.c
+++ b/drivers/media/firewire/firedtv-avc.c
@@ -1165,7 +1165,11 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
 		read_pos += program_info_length;
 		write_pos += program_info_length;
 	}
-	while (read_pos < length) {
+	while (read_pos + 4 < length) {
+		if (write_pos + 4 >= sizeof(c->operand) - 4) {
+			ret = -EINVAL;
+			goto out;
+		}
 		c->operand[write_pos++] = msg[read_pos++];
 		c->operand[write_pos++] = msg[read_pos++];
 		c->operand[write_pos++] = msg[read_pos++];
@@ -1177,13 +1181,17 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
 		c->operand[write_pos++] = es_info_length >> 8;
 		c->operand[write_pos++] = es_info_length & 0xff;
 		if (es_info_length > 0) {
+			if (read_pos >= length) {
+				ret = -EINVAL;
+				goto out;
+			}
 			pmt_cmd_id = msg[read_pos++];
 			if (pmt_cmd_id != 1 && pmt_cmd_id != 4)
 				dev_err(fdtv->device, "invalid pmt_cmd_id %d at stream level\n",
 					pmt_cmd_id);
 
-			if (es_info_length > sizeof(c->operand) - 4 -
-					     write_pos) {
+			if (es_info_length > sizeof(c->operand) - 4 - write_pos ||
+			    es_info_length > length - read_pos) {
 				ret = -EINVAL;
 				goto out;
 			}
diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/firedtv-ci.c
index 9363d005e2b6..2d6992ac5dd6 100644
--- a/drivers/media/firewire/firedtv-ci.c
+++ b/drivers/media/firewire/firedtv-ci.c
@@ -134,6 +134,8 @@ static int fdtv_ca_pmt(struct firedtv *fdtv, void *arg)
 	} else {
 		data_length = msg->msg[3];
 	}
+	if (data_length > sizeof(msg->msg) - data_pos)
+		return -EINVAL;
 
 	return avc_ca_pmt(fdtv, &msg->msg[data_pos], data_length);
 }
-- 
2.30.2


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
