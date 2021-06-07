Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2C539D62D
	for <lists+linux1394-devel@lfdr.de>; Mon,  7 Jun 2021 09:39:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lq9qR-0003tW-2y; Mon, 07 Jun 2021 07:38:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yangyanchao6@huawei.com>) id 1lq9qP-0003tG-SX
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 07:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DIvLYKKlXLBpE0aoutyZtF+l8b9sNg56d41bSANIdeM=; b=Vx++bVK2hRVQ9ny6qi+cxDleBZ
 etmpit8GBNteBG2X++kK1j3K7/LGMhLtSgbyMpid0pe/seyW3QQ8knn/X+kzv6M25al8hUuTOLnMA
 bkCoO+jGNp8KVAMeDIy4jJyxazWdkueaPvj75F2awOyShifbObnfyzTdwK+iABVL/ys4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DIvLYKKlXLBpE0aoutyZtF+l8b9sNg56d41bSANIdeM=; b=E
 W9Fs51fcQfcLKk7IrahtlkNxHzcytJT41TMz7A8/10FMZlot2c9tNms/ZcF1pOGAw9WE0GwsZuPeW
 M5sHZBNeyy42ntvPP7K2aN2bEpFrOW6T5o++lb5clCvfeAzp8bGs9VrEOS20wxABu5IFIiLbzC/a6
 sTOJXCKbirmUmaw8=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lq9qC-00D420-H6
 for linux1394-devel@lists.sourceforge.net; Mon, 07 Jun 2021 07:38:46 +0000
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Fz4rV0xK7z69cZ;
 Mon,  7 Jun 2021 15:34:34 +0800 (CST)
Received: from dggpeml500016.china.huawei.com (7.185.36.70) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 7 Jun 2021 15:38:18 +0800
Received: from huawei.com (10.174.179.133) by dggpeml500016.china.huawei.com
 (7.185.36.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 7 Jun 2021
 15:38:18 +0800
From: Yang Yanchao <yangyanchao6@huawei.com>
To: <dan.carpenter@oracle.com>
Subject: [PATCH] media firewire firedtv-avc fix a buffer overflow in
 avc_ca_pmt() 
Date: Mon, 7 Jun 2021 15:38:17 +0800
Message-ID: <20210607073817.1246-1-yangyanchao6@huawei.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.133]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500016.china.huawei.com (7.185.36.70)
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lq9qC-00D420-H6
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
Cc: linux-distros@vs.openwall.org, mchehab@kernel.org,
 linux1394-devel@lists.sourceforge.net, security@kernel.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1813928011513679729=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============1813928011513679729==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

For CVE-2021-3542:=0D
=0D
1=E3=80=81read_pos will be added four times in the patch, =0D
so use "read_pos + 4 < length" and write_pos as well=0D
=0D
2. The last four bits of c->operand are used for CRC, =0D
so "sizeof (C - > operand) - 4" is used=0D
=0D
3. "read_pos+=3D2" is added after the end of read_pos, so add value (read_p=
os >=3D length)=0D
=0D
4. In order to avoid memcpy crossing the boundary, es_ info_ length > lengt=
h - read_ pos=0D
=0D
5. When the date_length is a specific input of a construction,it will cause=
 memcpy=0D
 to exceed the boundary, "(MSG - > MSG [3] & 0x7F) + date_ length) > (sizeo=
f(msg->msg) - 4)"=0D
=0D
Signed-off-by: yangyanchao <yangyanchao6@huawei.com>=0D
---=0D
 drivers/media/firewire/firedtv-avc.c | 14 +++++++++++---=0D
 drivers/media/firewire/firedtv-ci.c  |  2 ++=0D
 2 files changed, 13 insertions(+), 3 deletions(-)=0D
diff --git a/drivers/media/firewire/firedtv-avc.c b/drivers/media/firewire/=
firedtv-avc.c=0D
index 3ef5df164..8c31cf90c 100644=0D
--- a/drivers/media/firewire/firedtv-avc.c=0D
+++ b/drivers/media/firewire/firedtv-avc.c=0D
@@ -1169,7 +1169,11 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int =
length)=0D
 		read_pos +=3D program_info_length;=0D
 		write_pos +=3D program_info_length;=0D
 	}=0D
-	while (read_pos < length) {=0D
+	while (read_pos + 4 < length) {=0D
+		if (write_pos + 4 >=3D sizeof(c->operand) - 4) {=0D
+			ret =3D -EINVAL;=0D
+			goto out;=0D
+		}=0D
 		c->operand[write_pos++] =3D msg[read_pos++];=0D
 		c->operand[write_pos++] =3D msg[read_pos++];=0D
 		c->operand[write_pos++] =3D msg[read_pos++];=0D
@@ -1181,13 +1185,17 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int=
 length)=0D
 		c->operand[write_pos++] =3D es_info_length >> 8;=0D
 		c->operand[write_pos++] =3D es_info_length & 0xff;=0D
 		if (es_info_length > 0) {=0D
+			if (read_pos >=3D length) {=0D
+				ret =3D -EINVAL;=0D
+				goto out;=0D
+			}=0D
 			pmt_cmd_id =3D msg[read_pos++];=0D
 			if (pmt_cmd_id !=3D 1 && pmt_cmd_id !=3D 4)=0D
 				dev_err(fdtv->device, "invalid pmt_cmd_id %d at stream level\n",=0D
 					pmt_cmd_id);=0D
 =0D
-			if (es_info_length > sizeof(c->operand) - 4 -=0D
-					     write_pos) {=0D
+			if (es_info_length > sizeof(c->operand) - 4 - write_pos ||=0D
+			    es_info_length > length - read_pos) {=0D
 				ret =3D -EINVAL;=0D
 				goto out;=0D
 			}=0D
diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/f=
iredtv-ci.c=0D
index 8dc5a7495..0e7ffa156 100644=0D
--- a/drivers/media/firewire/firedtv-ci.c=0D
+++ b/drivers/media/firewire/firedtv-ci.c=0D
@@ -135,6 +135,8 @@ static int fdtv_ca_pmt(struct firedtv *fdtv, void *arg)=
=0D
 		data_length =3D 0;=0D
 		for (i =3D 0; i < (msg->msg[3] & 0x7f); i++)=0D
 			data_length =3D (data_length << 8) + msg->msg[data_pos++];=0D
+		if (((msg->msg[3] & 0x7f) + date_length) > (sizeof(msg->msg) - 4))=0D
+			return -EINVAL;=0D
 	} else {=0D
 		data_length =3D msg->msg[3];=0D
 	}=0D
-- =0D
2.23.0=


--===============1813928011513679729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1813928011513679729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1813928011513679729==--
