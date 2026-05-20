Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5xiTK3SyDWo62AUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:08 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B81F58E7EE
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B0k1CtZK4epMQNygr6E8+gsqOkpFJfzFfF9/pybu8io=; b=dzRuMHrUhRfXQjcCHX0fv8zvSt
	4G2OPg4isYghSAI0rO9xwVSWoLeMymCLRvfL6Gz45RQd7QmhJyV3Egjg7BimLvwf81ejN21KfBJ0m
	uFnb7tzJOtp2oUVLSngAatxVNx9DiGqOeOkEMSWBfQ0bcU1ZMfQLkq5GjTfcbg5MdNis=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wPgfP-0008Ex-OR;
	Wed, 20 May 2026 13:08:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wPgfO-0008Em-3d
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dDHE0cebI0icyL6l/QSTdD0c81n1IJ4JgBSh0iQW5b4=; b=ebaOKNZT5Fm+N3qpGemwwtcVPa
 oee+9pVq1nQPK0NKd1Bfgx6B415m4mpZkVji0Eh9Hy5quiBR1RU6Jmr+Zduk4u1N7Esa/OjsZW3Rw
 vgKk7q2zVUIGLompsTB0qmyUvAHh2JIpU3Fm/aGRTqfZx+yTKDH09BZUbSXispoIO8SQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dDHE0cebI0icyL6l/QSTdD0c81n1IJ4JgBSh0iQW5b4=; b=d4GYFqWXPeW67WE2c7BxF2PIA7
 FYWY08CaNC14dd5EaGl9YbVJmWPCesHF1aJarEZL1lUk2SqL0G3HIvw0aZ0wlNHqBTaLZZHiAMHvO
 Aq2TlWiJruBTk3ccHZi4WpaEx+Z/pQZQEs6YeFkbgGxNI/Eym0L3xDSJL6//oM2kJPVY=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPgfM-0000Cx-NM for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:08:54 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 79BD97A0097;
 Wed, 20 May 2026 09:08:47 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Wed, 20 May 2026 09:08:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1779282527; x=
 1779368927; bh=dDHE0cebI0icyL6l/QSTdD0c81n1IJ4JgBSh0iQW5b4=; b=x
 SpjxukkWQRRQ63Ax9rwaaWoPNxLrw+vRX9CXG9sAhqslN60JO9LeyrjXEx6GGhUo
 cjGsNncZ85OStD50NdoSmDwihDsGb92W1RWsUrBaoejb3vqCDr6r7OBB+oa/O1OE
 F4qNa/gcQjpHJ1RxQlkEaYlHzIKkuSp9iVzI9N4Hqpl3uoC3bh4QPs3fkSw3GiCf
 Sh6rCRHPTpfxLIn5FArF/9Z/HNVMmbZ4K+UKCFI5y6XS4sW+0xS9k5cnpTuukLX2
 qrrrfRC49bxbqBGY73aIIARnX2XfzfSknMEZ+qY5oBj3bW4Op83YTCUIjFY6aikU
 Fkc6STwaSon0KRo0YN+RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1779282527; x=1779368927; bh=d
 DHE0cebI0icyL6l/QSTdD0c81n1IJ4JgBSh0iQW5b4=; b=TyctOcqWn+hGmGQo7
 f0lXG265fiuQyHB90MJlD5iztiqptnDXPQK9XKC2YAx+C8hNrCy204GwDJQZtH6W
 jUnT0y+WtCgSFC8AkpN4eoON2ZLo9rVFyMnGWc31Y3FNXtnt4d4UaMZIYLr2jOgb
 nJaibuuQ8NWpPTm373d++T+9bgBpjZnBlWO+my4aBgxcHCpdPDtVmTb7zT+VzxR9
 wDJ2RAT3gAIrR9NCNuPVMJ81jSim/ZWw5nuTcoEXeLOIMXET9sxPTHWJvBAktyzi
 enl6Ue91S8BpiLx7Z5ho+D/SHlpflZ+4BsdM1G72I/0Al84QlnfJhamLE9ceS8Lb
 gy4MQ==
X-ME-Sender: <xms:X7INajbCdW_dQKXi2ln_ip6EE-0D_JpJWSiX9VRdfkqu5CCFnV2IoA>
 <xme:X7INarWyLglir6W7MwOqn5D7zoWtgRRQmuGprnr_ZPdxh4EYo1p2eiGwrq7jaesXk
 6c0zYthDUPY5Cg_JKpIJgxDrXKYRJ1cYW_IUACLzuTBnspomwP0ZU0>
X-ME-Received: <xmr:X7INan6g5C8f2vMTasnqkENyCQMiXDxIUho27ELlnCzL6tFDaQgNYn2CiRELULlvwYVrUo2e3l0RNRf82C_zsHmmqP3dP9ivwWuNWc7T1jSF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeegjeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:X7INamg8RuB3hEuRSy-3-_qvXP8dzhe0Y_4GBVaHjuYuBLTdia-Uvg>
 <xmx:X7INaucf3yl3EbOyfurOP2BAiVkBU5DV86eHrGOvcTsdmHxlb52DBw>
 <xmx:X7INarcnHDpr5vbRJ_09XUIurQ81SPR04_XfFr1JbGRtClx_aZjJQQ>
 <xmx:X7INao_WKUHXAZgM4ZJw9CoMgih0w6XAgAjZs0OnV-B-gzc1MwAhtQ>
 <xmx:X7INapdLJqyMUAnFZxEFGBS1vU5-fLDbM9eMTOSfMYb9-Qgl3oRQ95fZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 May 2026 09:08:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: core: minor code refactoring for case-dependent
 parameters of iso resources management
Date: Wed, 20 May 2026 22:08:38 +0900
Message-ID: <20260520130840.629934-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
References: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The generation parameter is specific to the auto case of iso
 resources management, while it is in the common parameter structure. Move
 the generation member to the structure specific to auto case. Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-cdev.c
 | 8 +++----- 1 file changed, 3 insertions(+), 5 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wPgfM-0000Cx-NM
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
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: 2B81F58E7EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The generation parameter is specific to the auto case of iso resources
management, while it is in the common parameter structure.

Move the generation member to the structure specific to auto case.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c166e7617d2a..c669c9e42d34 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -129,7 +129,6 @@ struct descriptor_resource {
 };
 
 struct iso_resource_params {
-	int generation;
 	u64 channels;
 	s32 bandwidth;
 };
@@ -144,6 +143,7 @@ struct iso_resource_auto {
 		ISO_RES_AUTO_REALLOC,
 		ISO_RES_AUTO_DEALLOC,
 	} todo;
+	int generation;
 	struct iso_resource_params params;
 	struct iso_resource_event *e_alloc, *e_dealloc;
 };
@@ -1316,7 +1316,6 @@ static int fill_iso_resource_params(struct iso_resource_params *params,
 	    request->bandwidth > BANDWIDTH_AVAILABLE_INITIAL)
 		return -EINVAL;
 
-	params->generation = -1;
 	params->channels = request->channels;
 	params->bandwidth = request->bandwidth;
 
@@ -1336,8 +1335,8 @@ static void iso_resource_auto_work(struct work_struct *work)
 	scoped_guard(spinlock_irq, &client->lock) {
 		reset_jiffies = client->device->card->reset_jiffies;
 		current_generation = client->device->generation;
-		resource_generation = r->params.generation;
-		r->params.generation = current_generation;
+		resource_generation = r->generation;
+		r->generation = current_generation;
 		todo = r->todo;
 	}
 
@@ -1495,7 +1494,6 @@ static void iso_resource_once_work(struct work_struct *work)
 	scoped_guard(spinlock_irq, &client->lock)
 		generation = client->device->generation;
 
-	r->params.generation = generation;
 	bandwidth = r->params.bandwidth;
 
 	fw_iso_resource_manage(client->device->card, generation, r->params.channels, &channel,
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
