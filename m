Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F591DAAFC
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2020 08:48:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jbIWD-00015p-1y; Wed, 20 May 2020 06:47:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jbIWA-00015b-MZ
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0x5Q9TMW/pcKYWBvmhtdapFpEqLWfDSRp7i7zc3uhac=; b=kS2xmaAGyxqqrLC+rPFbhVrmxv
 NkZwKsM0oHf3AP+mmPtfbrqkHTgul9kX3EbxFOKdtkqz+LNkyIptk2ZOdWf7vTHWH/U5yBs/mNLOB
 10wQBs9fmNd8kG9FXPOxoh64aZYRFT225+lU8YNPNjQcCrSL+WkK9vp6Yk4CBXo5Cah4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0x5Q9TMW/pcKYWBvmhtdapFpEqLWfDSRp7i7zc3uhac=; b=iC5BpAoc9uIxO+7pzQpknt5f/H
 qFDAnYePduJT/7ZVJYJ8M7QnMmylR6PCpMgfFlY0n7oeUoy0NzPI9whGIuCFERh0NsYf6m/Ek8Gz3
 iL9znEtQx3F25b1pk3MMQFx9bYbrYR/X60nnRPE+q7MsKJizff2a3xTN6nByYl0+jBaI=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jbIW7-001hHD-Si
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:47:54 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id 47E40C36;
 Wed, 20 May 2020 02:47:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 20 May 2020 02:47:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=0x5Q9TMW/pcKY
 WBvmhtdapFpEqLWfDSRp7i7zc3uhac=; b=lbAvaMGUu03zDg6XsB+E7tS/ZgFDS
 B9IW9lYWm1mPP35CksdGb8t8x6QtnpgQsBsAZglzJ8ALb23UQSzZcgEqHFM450GD
 QxTd5Iyk7sVkAGVrdy4xDkNa6Lr99YXYkuZiR3tAJyoACsXPfFndcRQtLgA5PxTy
 hYOT6t0zXZaLYNNc80LdkMFFjW/c4FK6/tClhlKckNlYXB3tkHXZD27MisR+Omy0
 F8aIOiBn/WhKTfdAnQvMATTv0K4iPZNtFv4IDOmbnOL42ItbXWFyO0rrXqSPSKtO
 6tE4FYdQFkyIkUdDiLgSnesGo1v9mPsEDdTubeAnBtc53GkdLGZYKjRPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0x5Q9TMW/pcKYWBvmhtdapFpEqLWfDSRp7i7zc3uhac=; b=mW2PZna9
 P52SNXpQ4GT1sVkxxFVXYND/OrmTBBQsAAAgIL9iGW1SnOqlj+iL7D9ZuCji+SCk
 VX06hnTqqk9xbmVaXVcWDLfU17TkG7boVHkqcEoM2irzCcknwqeJnirg7lOd7WMn
 TWtGGnk+ivqzH9VDVVNcUPIBxH5aaxZAAwVyqDJqv6tx9QZvUBBD+HescazjOFSZ
 paLwV3snjUqBgIetXUnO+0RocXKBCGvoBEpinWDpzyjUMXq7HDLqMaIsFXOq1DSn
 EvGxEOqcNg56oaWF45WQsw7q7u4DjpIGoEBUiAczGcyQguUIlXFc+Cl5/+BRASXQ
 ulx3SZeF+1HXxw==
X-ME-Sender: <xms:idLEXpgzOGWeZyZRSIivUMEEDbBal43yeAVVInaoqjg31e7JrFRKNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtkedguddtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeduuefffe
 eiteeludevieetgeeiueelfeeifffhheetveeiveelfeetheeuhfektdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecukfhppedukedtrddvfeehrdefrdehgeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:idLEXuCjXj_Lee-SQyRtkYRmn9Ac6gEZkXb-kFovtUnXqpuK60s8Sw>
 <xmx:idLEXpFeZ0z21DI0kinkZOuCVhN3ZePb4rS9TBApRO3D3b0YvbVi5A>
 <xmx:idLEXuT1iJf6XmzAhAmA8bggY1V0FQWQ-Im9qPPV0OMCOszpqIQqqg>
 <xmx:idLEXqdXF5To2ccakZPDISGatrzHmWIIEhrQ8CPoJGGxKfrkXB2JGHnh-qA>
Received: from workstation.flets-east.jp (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0A9473280065;
 Wed, 20 May 2020 02:47:34 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: oscar.carter@gmx.com, keescook@chromium.org, mchehab@kernel.org,
 clemens@ladisch.de, tiwai@suse.de, perex@perex.cz
Subject: [PATCH 2/2] firewire-core: obsolete cast of function callback
Date: Wed, 20 May 2020 15:47:26 +0900
Message-Id: <20200520064726.31838-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200520064726.31838-1-o-takashi@sakamocchi.jp>
References: <20200520064726.31838-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jbIW7-001hHD-Si
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
Cc: alsa-devel@alsa-project.org, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, levonshe@gmail.com,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit obsoletes cast of function callback to assist attempt of
Control Flow Integrity builds.

Reported-by: Oscar Carter <oscar.carter@gmx.com>
Reference: https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 44 +++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6e291d8f3a27..f1e83396dd22 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -957,7 +957,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	fw_iso_callback_t cb;
 	int ret;
 
 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -965,32 +964,35 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		     FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL !=
 					FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL);
 
-	switch (a->type) {
-	case FW_ISO_CONTEXT_TRANSMIT:
-		if (a->speed > SCODE_3200 || a->channel > 63)
-			return -EINVAL;
-
-		cb = iso_callback;
-		break;
+	if (a->type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		fw_iso_callback_t cb;
 
-	case FW_ISO_CONTEXT_RECEIVE:
-		if (a->header_size < 4 || (a->header_size & 3) ||
-		    a->channel > 63)
-			return -EINVAL;
+		switch (a->type) {
+		case FW_ISO_CONTEXT_TRANSMIT:
+			if (a->speed > SCODE_3200 || a->channel > 63)
+				return -EINVAL;
 
-		cb = iso_callback;
-		break;
+			cb = iso_callback;
+			break;
 
-	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb = (fw_iso_callback_t)iso_mc_callback;
-		break;
+		case FW_ISO_CONTEXT_RECEIVE:
+			if (a->header_size < 4 || (a->header_size & 3) ||
+			    a->channel > 63)
+				return -EINVAL;
 
-	default:
-		return -EINVAL;
-	}
+			cb = iso_callback;
+			break;
+		default:
+			return -EINVAL;
+		}
 
-	context = fw_iso_context_create(client->device->card, a->type,
+		context = fw_iso_context_create(client->device->card, a->type,
 			a->channel, a->speed, a->header_size, cb, client);
+	} else {
+		context = fw_iso_mc_context_create(client->device->card,
+				a->type, a->channel, a->speed, a->header_size,
+				iso_mc_callback, client);
+	}
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
