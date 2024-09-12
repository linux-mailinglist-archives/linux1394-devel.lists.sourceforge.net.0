Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99461976AA2
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuZ-0004nA-JL;
	Thu, 12 Sep 2024 13:31:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuY-0004my-4a
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8k4VDzvRIm/u8Ga1uxFz+W+U5caXLxKxCncN23o4gsw=; b=SuG6gakjpEUIMJgitb8O+KsXZL
 0PSHU8cQzKmW7xkGZcRT2aEyRymyr9CnrxDqqvYFikyRQ2bzyPOEM/Z0yb9jEGTaan5O2nweqrcbj
 u3U7OHxHJjMFEYdg0ysNCcXl1D8sb3dmW1DvSueLRz+BUV+TVH4OrHNpVBUu5KOHFZ5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8k4VDzvRIm/u8Ga1uxFz+W+U5caXLxKxCncN23o4gsw=; b=WDWDTeJo5C9RpizvPQ/BcSHEOj
 p8P5tbQew1SQvcZXQYbSgqYc6kvXNcRFHpQP77SLUOC8/GL9dMI3FrB9g9l0JqmuiOjsbBWf+Z/ea
 pjAACKXXfRRiUOTfTtsc15fzWWcB1cfJioEQ676c80rvXGpJF2MZD6Vf0rpGMh4FLvxs=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuW-0000YN-OO for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:31:01 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 34E7D11404E6;
 Thu, 12 Sep 2024 09:30:50 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Thu, 12 Sep 2024 09:30:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726147850; x=
 1726234250; bh=8k4VDzvRIm/u8Ga1uxFz+W+U5caXLxKxCncN23o4gsw=; b=f
 C8rdqIE7Yjsl1oWxSn2pj2EzbbvZeh9D0j1pXCe5P6EibFgPb0JSRgg8WyJjQJtm
 IuzxS6HItAOiTk0HxLZ2hXzXpo9JgkyVq5cVEhhS8ThQxNcDTHT1CXAlXyxg60Nf
 h85pC1OZ0pB0T0+70pes679DL7zadBd26elv+23ze7YDjRCMnoVDtLstNL4w3WZw
 NT5tXljKuJ/UZe93S6xBplWZSg8b1ETqYjy83pPelDWaR4PThZhxbEQex3RHeKvL
 1w2G08N1G0eIdx1q4Tr09yEipWaDGOJT7Zyj99sLhhLxeFg1vYjR0nOTlL9syLkv
 1IxoDVLfHUfbI65eqpIiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1726147850; x=
 1726234250; bh=8k4VDzvRIm/u8Ga1uxFz+W+U5caXLxKxCncN23o4gsw=; b=t
 0RtQf1x7Q7BjHJopAg0IUJtr9Ty/av1aAvJvaGWWeOAF5BMQpuCc3EXW191KUztv
 YSF6szbKh42Witdyg2fibc7q9tXoX0jzBepYwQlX9fLvVbWjuxYmcQVjtQG1Jgl5
 K40BoS2ZxXCIWOYXufExFhnKoyw6KQOimsfcOkZeV3ORUs/Kf92NMfQYdan218gB
 /fI6Xc4UC68+3S2dnyt/wQSUfBhsBwT6yMVpKHeiS6haLK4eMfJVaqo8ue1GFN/6
 hkGFH2QVrNGVhj9o/+C9HYHXSbNiZu5HVa2EfS4pfl9uwoq1NAK9zQE4fU05Rt5O
 utf2JALPIzwfPzJQ7ypPQ==
X-ME-Sender: <xms:Cu3iZt52ssVbz_GSiftXKoo52KwkRq8XSOYWsGCdKk2mdsXMaeARXQ>
 <xme:Cu3iZq4sZuRzQkGnhjOigafeVlo6Bbe8UU4fmlcwv6j9PNYsJ-QVfkEp3HgV1CKJ1
 KCLBzhZOEFK1F1svSE>
X-ME-Received: <xmr:Cu3iZkeybRf9SOQjDfpd_RNnIMVXh2C9FSRiZtW1DSHvy8zYV3_5O9Ty2jjL7kGvHCwVdwQ4e-sitiv43qrO9WRiuyORAjTX2tjU9m8HtpfgNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Cu3iZmIeOLhLR3PZ2G4BvOIl0KGZz-tNNYAymk3IxOrwcsaSaOumDg>
 <xmx:Cu3iZhLAzBVEuPbp3sALEuJ0JCXcEc4CtYsa-5cYnhXXwdCZUSfvYA>
 <xmx:Cu3iZvyPPGoxeLgvKj97sCXacFxRgvqn_zWhc8n-moNWlb9XD5o5Lw>
 <xmx:Cu3iZtJHE1x1e0WAFla7PanKvSPNHqhzSKL5PFP7cW1lvIZUThvtWw>
 <xmx:Cu3iZoX9FKhOCLdWo42efN_wM_YJrdqCfCJ6PJO1HvHemvUVvzINwkFN>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:48 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] firewire: core: update documentation of kernel APIs for
 flushing completions
Date: Thu, 12 Sep 2024 22:30:37 +0900
Message-ID: <20240912133038.238786-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a slight difference between
 fw_iso_context_flush_completions()
 and fw_iso_context_schedule_flush_completions(). This commit updates the
 documentations for them. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-iso.c | 9 ++++++--- include/linux/firewire.h |
 8 +++++--- 2 files changed, 11 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuW-0000YN-OO
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

There is a slight difference between fw_iso_context_flush_completions() and
fw_iso_context_schedule_flush_completions().

This commit updates the documentations for them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 9 ++++++---
 include/linux/firewire.h    | 8 +++++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index f2394f3ed194..a67493862c85 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -214,9 +214,12 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
  * @ctx: the isochronous context
  *
  * Process the isochronous context in the current process context. The registered callback function
- * is called if some packets have been already transferred since the last time. If it is required
- * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
- * instead.
+ * is called when a queued packet buffer with the interrupt flag is completed, either after
+ * transmission in the IT context or after being filled in the IR context. Additionally, the
+ * callback function is also called for the packet buffer completed at last. Furthermore, the
+ * callback function is called as well when the header buffer in the context becomes full. If it is
+ * required to process the context asynchronously, fw_iso_context_schedule_flush_completions() is
+ * available instead.
  *
  * Context: Process context. May sleep due to disable_work_sync().
  */
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index f815d12deda0..b632eec3ab52 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -537,9 +537,11 @@ int fw_iso_context_flush_completions(struct fw_iso_context *ctx);
  * @ctx: the isochronous context
  *
  * Schedule a work item on workqueue to process the isochronous context. The registered callback
- * function is called in the worker if some packets have been already transferred since the last
- * time. If it is required to process the context in the current context,
- * fw_iso_context_flush_completions() is available instead.
+ * function is called by the worker when a queued packet buffer with the interrupt flag is
+ * completed, either after transmission in the IT context or after being filled in the IR context.
+ * The callback function is also called when the header buffer in the context becomes full, If it
+ * is required to process the context in the current context, fw_iso_context_flush_completions() is
+ * available instead.
  *
  * Context: Any context.
  */
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
