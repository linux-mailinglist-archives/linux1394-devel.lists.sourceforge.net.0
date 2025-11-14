Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CACF2C5DA79
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 Nov 2025 15:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fAEEtHem1EubzNiC0jiGFLl2Eb70T9KdLDASTYJYBW8=; b=QB35tBMP/PN74S4P7ngcZFiUNG
	05VNYXqJBTo7hBjkFimGNt69e8HpbhWDPhZjWU2VW8BXp6JG64+8zO5naG8CLHK9vf9Oo2nqZdu/u
	JUezo4KIqjRZyByCriubIly2VVYDI5DOsda9lL4BldR0bRMtRtqtDbb/0YB9rrlo9C4g=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vJv2S-0005gE-6p;
	Fri, 14 Nov 2025 14:44:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vJv2R-0005g6-D9
 for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Nov 2025 14:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gFZPavq6jIsqPGzCpycNZAV1mIC2qgkd2lLvpZGU71E=; b=FHv3ALnk7km8NWZn6LriAR5k7R
 i+WUVbRJk3yMNYHhcuCNu1aDWpzDDKOgTH2qOw7sczlGlmKt1rr/167+9E2kffRKS1KBgGSfPNIz+
 JWh33nkosUfUdey/lpePo1K5UoEt63eH46BWkpgQMqPQQrKjqMjMT0004LKSzNsNkhS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gFZPavq6jIsqPGzCpycNZAV1mIC2qgkd2lLvpZGU71E=; b=H
 yqsE5Rl/B0Bn/3AJtXhRL/kLukIikGFwEYeUfTGJ0xJkOdBjDNwEg7kpESXSDiop5n/1KAdLlvm0V
 wfMv+QoUNcnHWudrzQIp9Yma41XqMKZq+yRYM6enq2NBFwz3W43fj2gmYN6Aa8szPcFcSFvbKfqfG
 yd39rURe7NcWKS2o=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJv2R-0007U5-1A for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Nov 2025 14:44:35 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 6E4CB7A0126;
 Fri, 14 Nov 2025 09:44:24 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Fri, 14 Nov 2025 09:44:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1763131464; x=1763217864; bh=gFZPavq6jI
 sqPGzCpycNZAV1mIC2qgkd2lLvpZGU71E=; b=MnQJLS33GcGVQlCuOY9R9QZxj4
 UXTxnhKKeXZovcmlTuRJ/qgWBuVnrme9GdrJ6YuXwcpVkqksEbkcNKF07lsCzJ7+
 U5Y3W3iR83FgoC2EZXZAsbghG6ZBg01Cz6f0EDPIDFsoQ0ceWq1vhsjUBTyLlcda
 zWpMn3XQ4pMfO8ZnMhJeaBXPplKpvd2I9xOvylrtNiim0F5rnpeM6G0do9HO5LCl
 YaGkXc6eEkszAkHHTRFP4+W4ftYh9dzseVRxDdd5cBMUcNOOLxJ3u4UAVObk6qRo
 xfc4raXMWHgg3MbozP29X9bteVHKbUSgm6VR3HChb9NPln3EfBRCvPCWaJNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1763131464; x=1763217864; bh=gFZPavq6jIsqPGzCpycNZAV1mIC2qgkd2lL
 vpZGU71E=; b=0NuRVpU3SUJ4nD3pS8LWojv5BZASc7KquRxf4mxQs8DB80JbvhV
 tZO1dJsbhFUZMwonEt7PDt9NhNWqWJsiwaeUr/BtAw38dyhxIMIoWf58JXw2CWWO
 GRteE0XRKRZmHEPlNt7jW0NCye35MX6vZCTH9iTedyOXl6tW29SJOEYb3WbhTtIl
 m/8jw/mtFyzsK8oYwK8br5w2wDwsEdGVCCYbk0ENVpRzkgD2WD+7YxKSBqbVk2ol
 L1eAAeYhCwiuHJZrgXpf6fGm/hAkn6lFRFPcv/R4O+VxbT7RRC/X9Nzcfn26Jl5Y
 s0us3j7Pi5Xte1G/sYw4MXceT9fG+BAdVBQ==
X-ME-Sender: <xms:SEAXaVdtWO5el4bXWdI23SpLsnLobRkb8CMC9ibIUw1ieKHA04MckQ>
 <xme:SEAXaRIB8VNIBr73ASYIzdAG7Our5Pf1CPpHJOLQvEwv8BpyzrPohO4e_Gf-s7l5W
 uglt809ZnwzyD_Pqf4WSkV4GVcxvclfebnzWPBO18w20bInD95z6g>
X-ME-Received: <xmr:SEAXaWEe8sZuWNTI6yeNcBjXksWhCWIurjAFaoI7Owo-nkG75j0EIsxFS1raFcLv2F7wn2At_Z4eI9yOJvMhx74GvuJGDnrS_pEsBQx248psHA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvuddttdelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:SEAXaboAZvkuGCzs_tBXHxJMjzrbgjJ2EyHEnyZES01YxxMi0WPtuw>
 <xmx:SEAXafQdIqifheFePEvLP_IYyE_AQfTQEiCjUImFhyyM1jAsyExfzw>
 <xmx:SEAXaYPwMSRXW4NsFfviJvbia0fuDBdOfMwry1CAOsfy334bFbo42w>
 <xmx:SEAXaSMim87T3pRqZSQP-MyWJqWkJGwSFGlLcaKE-wud7AQMp8S7kw>
 <xmx:SEAXaew_JpXcIhuaNm8qTRLKw79b8M6H0q-gRCDEqiwr-mhoy_8Fk0vf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Nov 2025 09:44:23 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix to update generation field in topology map
Date: Fri, 14 Nov 2025 23:44:21 +0900
Message-ID: <20251114144421.415278-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The generation field of topology map is updated after
 initialized
 by zero. The updated value of generation field is always zero, and is against
 specification. This commit fixes the bug. Fixes: 7d138cb269db ("firewire:
 core: use spin lock specific to topology map") Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-topology.c | 3 ++- 1
 file changed, 2 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vJv2R-0007U5-1A
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

The generation field of topology map is updated after initialized by zero.
The updated value of generation field is always zero, and is against
specification.

This commit fixes the bug.

Fixes: 7d138cb269db ("firewire: core: use spin lock specific to topology map")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 2f73bcd5696f..ed3ae8cdb0cd 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -441,12 +441,13 @@ static void update_topology_map(__be32 *buffer, size_t buffer_size, int root_nod
 				const u32 *self_ids, int self_id_count)
 {
 	__be32 *map = buffer;
+	u32 next_generation = be32_to_cpu(buffer[1]) + 1;
 	int node_count = (root_node_id & 0x3f) + 1;
 
 	memset(map, 0, buffer_size);
 
 	*map++ = cpu_to_be32((self_id_count + 2) << 16);
-	*map++ = cpu_to_be32(be32_to_cpu(buffer[1]) + 1);
+	*map++ = cpu_to_be32(next_generation);
 	*map++ = cpu_to_be32((node_count << 16) | self_id_count);
 
 	while (self_id_count--)
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
