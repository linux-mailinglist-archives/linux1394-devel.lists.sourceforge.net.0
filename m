Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B80970506
	for <lists+linux1394-devel@lfdr.de>; Sun,  8 Sep 2024 06:06:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sn9Bk-0000tP-SQ;
	Sun, 08 Sep 2024 04:06:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sn9Bh-0000tF-Vg
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:06:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g3rVD5AMlaA9gk9eYXsId57UmfOtU4hWVY6wnZR27GA=; b=Ev6WVKAGL4/yxQijTFb2BS///l
 J8zIA2wxe2Dx/hSNeRVdq1ZwhpbYYAHnTQhc1wWxr7P8PQKNsWNLVP30xQEyBjcKCK3M6MZiqgoce
 8PaoMIieNKkNQE8AvcjixU7zx6DtG2QbD1G0aSru3UTaKV7PuoY45ew5/F7BoJ0Yglcs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g3rVD5AMlaA9gk9eYXsId57UmfOtU4hWVY6wnZR27GA=; b=a9wfGHK0zRScNCl8a1zPKUOrbY
 PV+qGDutyiLrIQkBhqGKMpwh7HzIgPk11bABVrjeJrzwWLT8y6VCqUlNhwZiT1/arXjx2gaLJ1Ljz
 JiZENSuFKSEfWsAbEiO/zDHzVn9LRLD7195N2z4mE/O7nZPVTjtuOn4lCQEKbgoRG2IU=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sn9Bf-0000WV-FG for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:06:10 +0000
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfout.phl.internal (Postfix) with ESMTP id D3A8D13802A2;
 Sun,  8 Sep 2024 00:05:56 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Sun, 08 Sep 2024 00:05:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725768356; x=
 1725854756; bh=g3rVD5AMlaA9gk9eYXsId57UmfOtU4hWVY6wnZR27GA=; b=c
 QKJtZXJVfBhH88DEnrt3ibxpI4iMC/52cmJ/tYqis6dXH9WrNWomXW/yaMKjZMZ4
 3xBj4dS8Szyd6OIiD4phP4T5H+holYErWY1EXyTc69cDvIUsld8ka/CzuvO8ehM3
 JFlBugPverI0lOazy+RoOlMaCTUKOijk9cJQo83GrMQFBVS51Y0YeHMZAvyMKPU6
 K6+Lk6Um3anOqiuZJBDEsCNWvwQwWGhi2ka13001ZrcbaMTaVhEARbS0UkmIyXgq
 JF2nwokCRJghCK0mZNBrrs11RIoEpGskrQQbYIpPJdjz0j4LySjD/l7zGx7JMJ+G
 OtwTLkHM11JDwGNVJ8y+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725768356; x=
 1725854756; bh=g3rVD5AMlaA9gk9eYXsId57UmfOtU4hWVY6wnZR27GA=; b=B
 I6uAxrygoNzOunL6IUC00vJAsU2GItBvlfqpOEkLB+EgbvlwUDDmKWd9byYaP9na
 XplNlhuT3hpfaTgknTrABiEqIS58e6qxKLZ8Kzxx6UavaVquOGG3ZA3L1tEYGFXi
 SdgtxmJbC3kijUxzrf8Ox7f5YY4pXekdqpMod7pxzluIy9lL0vHB26Xjqlysd/7E
 6yNm+VaVm5VZbD+/NcHT0N1GgJOSU+FqAYnpWn2tCmSxbqmRI8D3OtCOWSWBiEg1
 cv81Hu7V53MWlRR7nQBH4qazuqrjK67ycF1b5/o6863Dl86QOqeRjZhFJHXI2roW
 5ZAJIeDlm/PSAzO2N3rGg==
X-ME-Sender: <xms:pCLdZmXsoB3KIgzKOK9E45cycsjYdHkITIZOvgPJgbgtqK7TFuikrQ>
 <xme:pCLdZimB-fzz5EMdz5lDssOsMvmTWa4FvncuztpTJ6pSXZVDoWrbK4-HOV7OnqKQe
 drCbfLMBZgS68n1YYE>
X-ME-Received: <xmr:pCLdZqYsc3cPk55IIr0UPlfoBq4JSzLfHsPKBt__Tgb9kRmbc4oClZfO1WB0JdGpmpGh8_RguvUchsWZQ2y6woUAhRkldGTC6AtfvZX8h8aDeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigedgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:pCLdZtWSErjzNIk48F6WO2J5fAtNMTSfDzxUnSxN57TOr9okgJH6zg>
 <xmx:pCLdZgmnc14IyNC8AJiVjfxrkTjHKkREh5tgoZ-9rAZSZZU5Z6_-Dg>
 <xmx:pCLdZifRgmqCb1F9s6yNAgu-GnOdCggqQaYnEmdGK78MthuOGnf0RQ>
 <xmx:pCLdZiGpLfbV7T2YKWA1vk19pYfT1hAOUWnL_IRluy7mWqsjUxrx_w>
 <xmx:pCLdZqiUD1QgWteANhR-et8TbkBLPTPw9ftHE8uEmoXoeeXkLQZVfQXZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Sep 2024 00:05:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: fulfill documentation of
 fw_iso_context_flush_completions()
Date: Sun,  8 Sep 2024 13:05:49 +0900
Message-ID: <20240908040549.75304-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240908040549.75304-1-o-takashi@sakamocchi.jp>
References: <20240908040549.75304-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The fw_iso_context_flush_completions() is the counterpart
 of fw_iso_context_schedule_work() to process isochronous context in current
 process context. This commit fulfills its documentation. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-iso.c | 11
 +++++++++++ 1 file changed, 11 insertions(+) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sn9Bf-0000WV-FG
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The fw_iso_context_flush_completions() is the counterpart of
fw_iso_context_schedule_work() to process isochronous context in current
process context.

This commit fulfills its documentation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index a249974a0f87..f2394f3ed194 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -209,6 +209,17 @@ void fw_iso_context_queue_flush(struct fw_iso_context *ctx)
 }
 EXPORT_SYMBOL(fw_iso_context_queue_flush);
 
+/**
+ * fw_iso_context_flush_completions() - process isochronous context in current process context.
+ * @ctx: the isochronous context
+ *
+ * Process the isochronous context in the current process context. The registered callback function
+ * is called if some packets have been already transferred since the last time. If it is required
+ * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
+ * instead.
+ *
+ * Context: Process context. May sleep due to disable_work_sync().
+ */
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
 	int err;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
