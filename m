Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E91CB1FC
	for <lists+linux1394-devel@lfdr.de>; Fri,  8 May 2020 16:41:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jX4BH-0005el-Gy; Fri, 08 May 2020 14:40:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1jX4BF-0005ed-Jq
 for linux1394-devel@lists.sourceforge.net; Fri, 08 May 2020 14:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B1c1c4b7hcwNQpIS66ZNy2hvCK33KO4bX3N1aBJuM1c=; b=lHFzr7PU/akDc0UcqirDq9J51z
 +Uc+uQxAa2ExpS+9XbvYzMheHkD70mPyhIXTzVIZCmQ93oIllIRgYhw/gyh0N5mR128P0fVlwdBiv
 +ZChMsK8RpugTxXsRQwdg+xohUmLFBocM5G1m61LfGyqQSTZR2bXiBhG+c9ZNUHxr/Bc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B1c1c4b7hcwNQpIS66ZNy2hvCK33KO4bX3N1aBJuM1c=; b=Q
 3io9Nhw+8FE2A3GDPIVnwwJNhk/oLf7ToDEbTFIgxq/AAKzEo4JONiGW2PP6Bpjc8go0TzQub2T2W
 +TYQkrwk+DUVInGtUflqQsdNO5AZ/QZC5bTscXnAfagwgu3AVpsf0u2fKT84LWBXTPfnmhAOIPY7A
 7bI7tX6F9fAg9mEM=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jX4BE-00Cehr-CD
 for linux1394-devel@lists.sourceforge.net; Fri, 08 May 2020 14:40:49 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 048Ebmmb151195;
 Fri, 8 May 2020 14:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=B1c1c4b7hcwNQpIS66ZNy2hvCK33KO4bX3N1aBJuM1c=;
 b=iBy3sM5gzqqO9TmCpG6EnnQDsryKuEu9BCc9Wl1tZ/U6DZR8IIV/Q1IHr7ERdefSRe1x
 /qmlmoYLrCCUfMhC+Z5QWcORvPJC+jOKphHEe7zpFD/g1tCoo4Blj7Xbn/RVqrAS4uc8
 Rb/mlNaiCth0NyPbN7HHOFKlJ8ZiUxD3lAu9CHKr9HRT1Y425wJ5gwuCv6CK+/yDjPAE
 szwyutASWoLWN/fa8xLJYV9ESwLpUUvU6/bpzvob+7Jg77phEtZVai/NDqBgAzxk73e9
 nfmsu8R1UdzsJIry7UtU7a5JSlA0BB7xOFRbFtp4nuAjkciP5fYkQwqKGjRiwC1f1S88 Nw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 30vtewub98-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2020 14:40:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 048Eba9h145238;
 Fri, 8 May 2020 14:40:31 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 30vte02xpu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2020 14:40:31 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 048EeUww002334;
 Fri, 8 May 2020 14:40:30 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 08 May 2020 07:40:29 -0700
Date: Fri, 8 May 2020 17:40:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: Using uninitialized values in node_probe()
Message-ID: <20200508144022.GB410645@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005080130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 mlxlogscore=999
 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1011 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005080130
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jX4BE-00Cehr-CD
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
Cc: kernel-janitors@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

If fw_csr_string() returns -ENOENT, then "name" is uninitialized.  So
then the "strlen(model_names[i]) <= name_len" is true because strlen()
is unsigned and -ENOENT is type promoted to a very high positive value.
Then the "strncmp(name, model_names[i], name_len)" uses uninitialized
data because "name" is uninitialized.

Fixes: 92374e886c75 ("[media] firedtv: drop obsolete backend abstraction")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/media/firewire/firedtv-fw.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/firewire/firedtv-fw.c b/drivers/media/firewire/firedtv-fw.c
index 97144734eb052..3f1ca40b9b987 100644
--- a/drivers/media/firewire/firedtv-fw.c
+++ b/drivers/media/firewire/firedtv-fw.c
@@ -272,6 +272,8 @@ static int node_probe(struct fw_unit *unit, const struct ieee1394_device_id *id)
 
 	name_len = fw_csr_string(unit->directory, CSR_MODEL,
 				 name, sizeof(name));
+	if (name_len < 0)
+		return name_len;
 	for (i = ARRAY_SIZE(model_names); --i; )
 		if (strlen(model_names[i]) <= name_len &&
 		    strncmp(name, model_names[i], name_len) == 0)
-- 
2.26.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
