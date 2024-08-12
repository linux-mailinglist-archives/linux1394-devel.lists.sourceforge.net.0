Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3245D94FA6E
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdepx-0005E3-Ve;
	Mon, 12 Aug 2024 23:52:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepw-0005Dv-OH
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kh9i0JPlzid5BWuq583j3AOPTE1mAiuU5Or9KJgOb3o=; b=dnhpvj/363uSe/MuTM2q4TJTQq
 VZC+5LKu6giMtsAL9SPOLQKZR+JdmgTG+xoO/db25WZoedLJWWrSBbf05WW2Lof0eyNpgxbZZE4PS
 +MxoXZjFYrViBgVAKpqOvUsjlv8efwcfWMr8mGlQOdTGDDv8sOgV6Zd6hNQ0t3OB56ss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kh9i0JPlzid5BWuq583j3AOPTE1mAiuU5Or9KJgOb3o=; b=nS5G/Xte+HvLcRvRF4BwsQXBUf
 D2XPz7fHVnBQJXzJvX0cPpV7Gl8RF3FOEgogH28cjj3nTlc4lYG1XKPJd/Ul7bztJXJHGHB0Mhjq4
 TXJYWa3n/85agaKWKW2mCsj6uO1HuE5Jg7bsNUDwj5TtuC1eRBOyo1cEhPdlqSh+MwZ4=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdepv-0002Ds-W1 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:28 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 5FB721151AD8;
 Mon, 12 Aug 2024 19:52:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Mon, 12 Aug 2024 19:52:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723506737; x=
 1723593137; bh=Kh9i0JPlzid5BWuq583j3AOPTE1mAiuU5Or9KJgOb3o=; b=w
 GsIIMOHF5FK5H2GlsoUKvFaD0nhKCODOrnGNWNx4flm3lkyBrvZwGXRwiLmQH63h
 bynUJQqGOP6edJx8tO6MmNwe7sM76HufChB/tlZp9kiuVTn4c689TxwfMXhHjTW4
 93liREkkbdrzvGFleZi4E0FE7ymHH2TFrcNXHXvKkL50W/u7XBiT9TVugBp+/N8W
 ETOvJSGB8Ws0jWyJsvKkaTVUCe2/XKM+PwDJ3xZwunRKRXGQaSv9owypONWVbtCj
 nnU5FoTKz46j2D7faTb70W4JAaGda94QmtCWtDqPf+evxMOwrt+JEH6YnQXIx1dt
 dj905UxNwsilESG2kgPJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723506737; x=
 1723593137; bh=Kh9i0JPlzid5BWuq583j3AOPTE1mAiuU5Or9KJgOb3o=; b=Y
 lPHK8RLjsxRbrJp5YRv6Opse/RaZM5VaJuNuUfKd6jZPOgABdqq6CUjy674Zo3rm
 irfE4l51TX9LI4o/L6lily8A+9owyIruAEWmqpOy4IUb7wAvjKrAz0Ryb2lg/AAw
 vCO7GsPio5caJaxb2JUuLnCecG9L0hNR7rhiuOOZa10FgrA5exoigizAdR0hkAY+
 Ilvhqxcp39xzEuQSO1FbeYNSU/158qqtq2TMqnzbfOFA5QONSpYI7FAhZtZpaAZe
 B/P0Pf5oe/N8m2eWATuASgAhMFoLGsRioNVa7Pnb+RUhK784t6zfWJzW21KTTr1d
 LoWiy7cWMuQjy9JAcSLZQ==
X-ME-Sender: <xms:MaC6ZuRwX8JkF5zn0a2A_3HrRZI_80LxSYnZVRbDQt6TbsSxKrhJ-Q>
 <xme:MaC6ZjwFNpTMJV7V5CCLT8jmHguR1EunNOiMqw_Zz_ooO9XvhleU1_ovWFQjHnphU
 ZKxuKmvCbzlVV3Gew8>
X-ME-Received: <xmr:MaC6Zr16ZHaXKdmMvltKGTAZm8Qcw5nMg_WpyC1pshB3NckmRg6H9RMmNAookbV6sAu2oP26Qb3ZcuKYM6X8tUijiffVUpH_1jjNen9ELvOQxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdekucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:MaC6ZqB8LQCp0vjSDv3jXV_Go9Jw4wBrwzlpgHxqs3Dv-blLv4n_2A>
 <xmx:MaC6ZniUGdGLEw4GbGMG7NhC5J0LzURmIiYW6zd-7uGg6l5P5jzLAA>
 <xmx:MaC6ZmqjznKiOde1QmuvEWrAcOOcZddUbA4lH-YpKxFgToKfRXsFnA>
 <xmx:MaC6ZqhhIo0oxQQfEwmONjIZ9muHqgfenUNV5JIHATApPTqlS2NAPQ>
 <xmx:MaC6Zqu4pZFo9IOEAuKxqYETjJe4cvPWQtoRYz8VEMEfJrvfbf9ykAr1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:16 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/5] firewire: core: add helper function to detect data of iso
 resource structure
Date: Tue, 13 Aug 2024 08:52:08 +0900
Message-ID: <20240812235210.28458-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It depends on the function assigned to release member to
 identify
 resource structure. This commit adds a helper function to identify
 iso_resource
 structure. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-cdev.c | 7 ++++++- 1 file changed, 6 insertions(+),
 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdepv-0002Ds-W1
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

It depends on the function assigned to release member to identify
resource structure.

This commit adds a helper function to identify iso_resource structure.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index e72f91cc3711..6fe2a2ea9869 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -161,6 +161,11 @@ static struct iso_resource *to_iso_resource(struct client_resource *resource)
 
 static void release_iso_resource(struct client *, struct client_resource *);
 
+static int is_iso_resource(const struct client_resource *resource)
+{
+	return resource->release == release_iso_resource;
+}
+
 static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
 {
 	client_get(r->client);
@@ -170,7 +175,7 @@ static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
 
 static void schedule_if_iso_resource(struct client_resource *resource)
 {
-	if (resource->release == release_iso_resource)
+	if (is_iso_resource(resource))
 		schedule_iso_resource(to_iso_resource(resource), 0);
 }
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
