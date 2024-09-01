Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D22396761B
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:16:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiZU-0001c9-Pa;
	Sun, 01 Sep 2024 11:16:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiZP-0001br-IB
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=GuDu0hRd3tXFYpnKF9FcBcAi6X
 +8siUeZcKsAmH/W2TM9g9gJdAKVgtkDrkMN/3KnRhDNrOdpPLNlY/s+T8VQXcltfEAQZH4HEEeEe7
 G2yWbzv6PreRipKHUMov1vsG5PSOAyhvJvJgBeopqrKOEiUtncsmHyju8b5+xi9KHqBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=ElQaBPgbtkEOTbFcaNB5vNvnCg
 mC0W8sW6tcBMeoEQbtw7ndVYtIreHj599t/RujZz8MrkjTQoWnhW5LK9TkShC3fqYbtPDKpRgox26
 Mva/UDko1+yoxtYsjbCKo9BAcbshJDAguZWPjhQ5D9hrtiu4OyrbgNalGupJYmsUnJko=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiZO-0006oC-Gg for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:35 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id E6B7111402A0
 for <linux1394-devel@lists.sourceforge.net>;
 Sun,  1 Sep 2024 07:16:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 01 Sep 2024 07:16:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725189383; x=
 1725275783; bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=K
 X7Pa7hQgE/iwY9LkDWfcOrIGrNFMAAlEcsV8zK/u6/uF21Wdo//vBwCBaCqxuNyr
 6mgP2At6XB9L5/th8IS/Kwlk+SzDyGPPLKASoOIqZoY4WZeGIsLBeDKj7u4SlpkH
 C8lmKop57Gn0blzZdPYXI2DEOZg2q2PJ/R4avQpUR/ldIvU7bXdzorodYeP6uywk
 tKn7akR6JR2FzrlxR7G6vzjaZ11pMDErv2SI5YV7MIKnKz95aFCoJMIjgtzYOOPJ
 3SZns5TUeALqZaGtjz+Qu7K+oR71wekXGXW4kFzbwy5JiH7FMkOXdXtYS0TrFUwX
 ZUpEcxPsxuJJaMjYnVEZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725189383; x=1725275783; bh=/t1GxqdzaPNcX
 cCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=azqEkqLm8YdM27m/JoXfD82+oAyF2
 7xcUAowq5Z4Hvnj4aHpClHWBztostjlBD99otlr6WXybmHQq3f6etjRbsRsatLkJ
 i+UACvyMNNVKYc6cvpNoLVbpL4t8cs9xmLwp4y0qUobSqHXLiQS99jK2WLvHdWBf
 Bbf2yUF3NsahvKlz4KcV2pHs7zh8z3GvHBgaoNaCKE69cttNYX+B4oS6Ppf2OiBK
 1i2MmRIuSU+MSFVm8l+ceeLjwmPV0gU+UrZeeP95w29YXQtA1nb5v7y3Z5c14ndH
 X4oeRaugG+NcdFnbjoPa8rHhW7pDSTcXxNRaMC/QQ6E8AgaJW3H+wT6ww==
X-ME-Sender: <xms:B03UZuN___N0X2R2lpL0mY45Lck7JoqEDhi76PBcMH-8WeFJLSqYAQ>
 <xme:B03UZs-B6Xf0yXVM9bYKUpOs4b4Luct0lysG3v1cAELf61ac4QYypzRCDWqbHbojk
 tTlJPfyRDqQdOHWnNo>
X-ME-Received: <xmr:B03UZlSXQP10Kurhew2NGX5mySQUVIwqwmWOXCIwvzaNQ1nPC2ujrR12VTB_kcPnmeY8CljetqniwrJbyP5Bc_OGG311fhK2V9tAAiYAUiY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:B03UZutSyXqUyjtVsNMGdn4BEm_gPmQR0jwa-69wQ0Z80Is5yGyoeQ>
 <xmx:B03UZmc0H5_TypRnQC3T3GFnfusg9Sh435CK3P5_0noLSWQB8No2Pg>
 <xmx:B03UZi12OOv7F4zpPc-bZxrP-vAueU95oKe_cTWXhNsG-j0sOBTGQQ>
 <xmx:B03UZq9QUEt22PAqIRplwjhO2mU3-jJB1w2xudMiWKKcHq5-TPWCRA>
 <xmx:B03UZqGwweogLD0pT02C1vljjBH8LPhRHYET6wl15VF83uus2YjEFbXi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Sun,
 1 Sep 2024 07:16:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 4/5] firewire: core: non-atomic memory allocation for
 isochronous event to user client
Date: Sun,  1 Sep 2024 20:16:15 +0900
Message-ID: <20240901111616.155464-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
References: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiZO-0006oC-Gg
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
