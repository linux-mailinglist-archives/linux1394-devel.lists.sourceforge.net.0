Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D48967603
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:07:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiQD-0007lH-3G;
	Sun, 01 Sep 2024 11:07:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiQA-0007l1-Ie
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=SXAX/J6cDC85IdqRNzFSCNTduG
 0WZ9bI8P8EgX0JQtcW7Z6VNcTJEGzYcTMTOY517SwfwHpLDVoky/Mdq7NfSb5DFBM6a/HvhuS538w
 FeoHrICQ47koJJy9NX8tvK8gH3ksm7cJZ4j4Z0ozijf24YgVmplvmRf05X0xsdubb8jE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=CpGXql6hVV2EYn5U/+89CsRTi+
 /G9ZF99M0czXrmmzJuq3Ak+xvHy8Ooy7/x4KNlY+e6Ah1Lhyp6uTm1jhbon7jQe9IcGREsR5ZqYpg
 zTnhCp5I08rnOmzztetVurzyBBeRF3HjRogf0dHFQBesBUIFj2j8gQwNSkrhu8FQWruQ=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiQA-0006KX-JG for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:03 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 0922511402A7;
 Sun,  1 Sep 2024 07:06:57 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-08.internal (MEProxy); Sun, 01 Sep 2024 07:06:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725188817; x=
 1725275217; bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=B
 osNeXwY3EoVZ3EsoaT1lXmuSReh1630r8zeANJlXKG8T0735R9LrbvzIFuwrzQoy
 Zln4QISZZe0xNDRbxOjTTZET00XqEJdrxyy1hMho86s1fALEIMiBTRgQEur/QmBO
 4d+Eh8QCgo6M5EjN+Hzw5A3GQJAGfLxsFlx+lUpAYLx5x71ZVoCAua7knvAyReZC
 Vtc+Tpeg6lJD1U53S9SAWPjfcEcIZal4OJycnCreplUMhxn12g9EvoXms5qZWJH9
 EyiR84SNPm0qBIRXqOmkyGmYdf/QCRw0lw+YbfpMoeIEBhAlkM0R3yIfpzQwVGP+
 IbQh9J2nFJu3IyEYjG+vQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725188817; x=
 1725275217; bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=C
 QLVGJOlkTuF0q7sNNcUoCQO9y8771+Yg/1Os/lkMcHGHgyw+xztRAQN8i/qmid2Q
 9/gfmhr0/fe3pcqnDAiBdFz7rsNtr/3L80AaIGbbRrq7XvDzGXaI79Jsk0826bai
 +Oy0eKFRgnb1KQHfXcVAjKby5TjCYi3YSXn6WEywcBRw+f5izEwi4cZ9uYeWWvR9
 nU/DqmEeaYrpM3GVIqtmdnhY0xZ9bni6r7MATTc5NTF+1DymLwbeO+AtOMjdkWli
 1Vgxpwv82yw9Ixx2EKCgP0EY9Q56BUmRGoTtr211AHpl/BqDgqJv6s4tuWo2P+Fj
 gPnV+nL7TjjmSmFIM4IKg==
X-ME-Sender: <xms:0ErUZg9bu1nWiHzzlkzUDfz2bcdRkLHz2bl_OvX81M8LzoNHAQ30BQ>
 <xme:0ErUZotbX8ROtsdyUTwYFKd_y4xTxRVKPL0afqTaRzHSTptO2K84cRV-G-WJmegXu
 _myeyGh7lcJhO-j5m8>
X-ME-Received: <xmr:0ErUZmA0XS7KPgH5lk6Ydes3kQhVWr8KUjkTImhr228FhW212xSp6EJhVldgaoLuSxMclhfv60F2sv1V6nQ3sZI9cY4Az-Afxcp6Qhk-MB4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeej
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrphgr
 ihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtohepvggumhhunh
 gurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhig
 qdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvg
 hvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:0ErUZgf5IEjm7FmmXcvpEgh7Yi4hfdQNJdOpjxxrTTfqSqnmpVSogw>
 <xmx:0ErUZlMWfjamZxnRQo0QBua15LMFquxGsW3FDNmYs5F7LrIt51r8Nw>
 <xmx:0ErUZqmvKIteynr9P8lDLUwVzeTYZxSF--yDqu9z8dHBcIng2EFdIA>
 <xmx:0ErUZnsyjr7AaPttWX-M8yNd3fYYOq0O8d7LqnIbzHSrymXTJCnGIg>
 <xmx:0UrUZofeUihxX0_roXckbHkdtFq-Yt6Y3ygeO6A-XUj2XezUV7R0-Nzn>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 07:06:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 4/5] firewire: core: non-atomic memory allocation for
 isochronous event to user client
Date: Sun,  1 Sep 2024 20:06:41 +0900
Message-ID: <20240901110642.154523-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
References: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commits, the callback of isochronous context
 runs on work process, thus no need to use atomic memory allocation. This
 commit replaces GFP_ATOMIC with GCP_KERNEL in the callback for user client.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiQA-0006KX-JG
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
Cc: edmund.raile@protonmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the former commits, the callback of isochronous context runs on work
process, thus no need to use atomic memory allocation.

This commit replaces GFP_ATOMIC with GCP_KERNEL in the callback for user
client.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 3ea220d96c31..518eaa073b2b 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -982,7 +982,7 @@ static void iso_callback(struct fw_iso_context *context, u32 cycle,
 	struct client *client = data;
 	struct iso_interrupt_event *e;
 
-	e = kmalloc(sizeof(*e) + header_length, GFP_ATOMIC);
+	e = kmalloc(sizeof(*e) + header_length, GFP_KERNEL);
 	if (e == NULL)
 		return;
 
@@ -1001,7 +1001,7 @@ static void iso_mc_callback(struct fw_iso_context *context,
 	struct client *client = data;
 	struct iso_interrupt_mc_event *e;
 
-	e = kmalloc(sizeof(*e), GFP_ATOMIC);
+	e = kmalloc(sizeof(*e), GFP_KERNEL);
 	if (e == NULL)
 		return;
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
