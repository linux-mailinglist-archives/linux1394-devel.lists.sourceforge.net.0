Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCE3331FB0
	for <lists+linux1394-devel@lfdr.de>; Tue,  9 Mar 2021 08:12:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lJWXG-00019I-2h; Tue, 09 Mar 2021 07:12:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiapeng.chong@linux.alibaba.com>) id 1lJWXE-00019B-NQ
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Mar 2021 07:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UvsFXHijmqjuB8/jAPZOhCElRNJshsa30WI0WQd1/4Q=; b=QtdIfgku1lNoRZQ6uwVmHnDM+0
 NKZRNBW9XSsjBTzf4Q2+x6X5e/hOIIC6FyERsGFmDIvpaCD73zOuz0ORjXSVBq/S61y434IKXB1gB
 Z6toGEyQHOu6aOLGxdt4E7q6NUc1vmSU/zL9WQ3eOm8SuT3fFxwMvYP/AtV9ify4KJNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UvsFXHijmqjuB8/jAPZOhCElRNJshsa30WI0WQd1/4Q=; b=LJVlhPPn/3egSNPdUU18SiyfQh
 TLtGm9BD7DLo3rgIhNf6jBRDzGteY5K+/vASMBHoeDx+nynGxMlpPHueP89YCIAcpiOoUAQHINy/F
 T0K2LN2UjJzT9Xop2MWZXkgQ9WBIE5At87zXxQixZigopmJMJ2UzQfQYiPnHK0jXRsVQ=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lJWX4-0001wW-Q1
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Mar 2021 07:12:02 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R401e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=alimailimapcm10staff010182156082;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0UR3kFqb_1615273900; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UR3kFqb_1615273900) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 09 Mar 2021 15:11:46 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: Use bitwise instead of arithmetic operator for flags
Date: Tue,  9 Mar 2021 15:11:39 +0800
Message-Id: <1615273899-88446-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lJWX4-0001wW-Q1
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Fix the following coccicheck warnings:

./drivers/firewire/core-device.c:973:22-23: WARNING: sum of probable
bitmasks, consider |.

./drivers/firewire/core-device.c:954:22-23: WARNING: sum of probable
bitmasks, consider |.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/firewire/core-device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 6821698..e04832d 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -951,7 +951,7 @@ static void set_broadcast_channel(struct fw_device *device, int generation)
 	if (device->bc_implemented == BC_UNKNOWN) {
 		rcode = fw_run_transaction(card, TCODE_READ_QUADLET_REQUEST,
 				device->node_id, generation, device->max_speed,
-				CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
+				CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL,
 				&data, 4);
 		switch (rcode) {
 		case RCODE_COMPLETE:
@@ -970,7 +970,7 @@ static void set_broadcast_channel(struct fw_device *device, int generation)
 				   BROADCAST_CHANNEL_VALID);
 		fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
 				device->node_id, generation, device->max_speed,
-				CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
+				CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL,
 				&data, 4);
 	}
 }
-- 
1.8.3.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
