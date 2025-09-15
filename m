Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9E9B5888B
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5iDGJ3OFXwH4o/oYLF/HFixN9vde5YRdUSXAojJHS8=; b=hHrngTiG5b0PBK4tFmpBXVaBg7
	ByRo1DEzDWs5pOPZ5WqGCcY0n/O7XrQkdTwBT0sF8Fyw0RoedceTFYYglW7h6/UTOxF2jMOeeriWu
	7lwtQh8rXWUIzPg2c9dWwiLRy/bE99QUfr5AkCk5+B4hWleuh8bmiOi8tA2PjauVwmzI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvY-0007PM-U3;
	Mon, 15 Sep 2025 23:48:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvW-0007PD-Nh
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T6wMwxzSvaxXpw+n82w5s56jqEc3YNWXuoN96hl1MF0=; b=bipcDr/6mNZCKQTEFn20NEQhT8
 tiEYoV9MDblh2luTuZKFtRZvAMMq5B+dzIWnqElWC/UuXTf6tUl/a5GjThOUTXQDt396gO3e3EOIS
 YjCTjJ5zb5BJtbXdSdWSE2Av9oSuHN8H4/HZk/Av1g5LtBaD8Ogjw6rG/8RlLf5uk+/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T6wMwxzSvaxXpw+n82w5s56jqEc3YNWXuoN96hl1MF0=; b=Zzb/TSJh7/ySbbSy+ITZnYtIHj
 5pknKPn7utE6TlNf48UYLjSVbjs5HbeYmTTQNXVYy8Tyo/heuOruujoTPFwKrJawyR3JLTlmOZCo5
 AufbUriSCabwerLdhVsYfiQf2dhfRbni8NtLIIXBrTg+kos+NQPA+rRqAhTPc51hV87Y=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvW-0002KJ-8s for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:06 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.stl.internal (Postfix) with ESMTP id C2DD51D001B8;
 Mon, 15 Sep 2025 19:48:00 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Mon, 15 Sep 2025 19:48:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980080; x=
 1758066480; bh=T6wMwxzSvaxXpw+n82w5s56jqEc3YNWXuoN96hl1MF0=; b=m
 9dVGK8ekC3Nujd+QOrvppfpz/FZdaGPnQot4/Bmr9Qt+Qs/hDBSRkaiL/PEY2PxU
 kKKlf2cO+9TsIEFJD6UBJDNnmpVOnszmOnRtErelhZeXOoCTfq55v2a5hukoVEg1
 oCKdUtTECB68Gs7HoYzdl69q1e4STKraTphlRuRijEAwx0UaIzAHC4bzUuqhn1t5
 vq/USK50ATUuQLnTdXo8fG0xdxaC2hHq5jnqG1UCmUb7wFQ8S6TH8QLRToob2En1
 adL/xDQn7qw0dW+l1c+qBesXTQ+j/d2j6YPNnEA9qEorwKeS3Ix8Mp11jmlOM1Hx
 kxM+d/MQ3KbWFPoY72VXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980080; x=1758066480; bh=T
 6wMwxzSvaxXpw+n82w5s56jqEc3YNWXuoN96hl1MF0=; b=OEQlB0SBkyRuYWt3Z
 cq9FX6PeP2nNlOVDwlACCVi+3dYEDF2upVDzreB6xc1mnbr/4uEQCtwQ/Danlr6s
 Frc+PV6Sugf+86txMxnsvb2dtseH2iroSyUpwV7BHNZOTe2zltmU51ufu2KwX77z
 IDjmgkGVyMqWfzLkzlGHqTxta3Sp0n0PouL4pVlzvUm++MVUZv0RifpoKv1B+84M
 PW5eKSYmqk35/ghipAL0cZMQ/tW/0T2vaboNopQ1jHbXYqFiaQv9qVVh1gV+jh+l
 MqcDoo+0oV6o0W3geWEagPHGw5BXf+1cVOycjaX/FV3NxDzlGv/7f5DYsiQvxzOT
 8jTog==
X-ME-Sender: <xms:sKXIaFxIFdY7eSUd0qHjqXlZipti7hQH36PeVfJcLZL3RhsLSJHZdw>
 <xme:sKXIaOP0qKzbwP78KEFjWlIzgbHd_p8RAuaxT6tMEUa_4CYfCAGypU6vBUnM2Kkst
 9PkdhgIVKuu-PVbYYw>
X-ME-Received: <xmr:sKXIaBQi0Ii1P3myhS1nxo4iK-G55vIumgbMjZMoeJYHVtK0xS43Nn5z6t8f1owjsXv4elZ4qxcztdiIo1C_DKms4-2T-nTjinpEbi8aG5Vlsg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:sKXIaEYtQd2UKgdH89gHPUbdIXqjfQ8AmZQO-NrqrX61GVTO6XcyVA>
 <xmx:sKXIaG0ix-XjP_jO1GrTn96QN6UGEKUDc4XfCm-ue-dVPDr_1wCkWg>
 <xmx:sKXIaMWesTWbkN-7OTJwvUxHkckKUAYPMem6a9ippiqnivV41SGN3A>
 <xmx:sKXIaIUbrI2EjUwXchf-1iwdwGiXbMduN-jqNQrmXWW1V8D7I9ERYQ>
 <xmx:sKXIaG1r2Hhul0-Q4hDBzEIIO-5gxTNVvuOMHl-4l7wg6VluKy7GLGgf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/6] firewire: core: annotate fw_destroy_nodes with
 must-hold-lock
Date: Tue, 16 Sep 2025 08:47:47 +0900
Message-ID: <20250915234747.915922-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The function, fw_destroy_nodes(),
 is used widely within firewire-core
 module. It has a prerequisite condition that struct fw_card.lock must be
 hold in advance. This commit adds annotation for it. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-topology.c |
 4 +++- 1 file changed, 3 insertions(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uyIvW-0002KJ-8s
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

The function, fw_destroy_nodes(), is used widely within firewire-core
module. It has a prerequisite condition that struct fw_card.lock must
be hold in advance.

This commit adds annotation for it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index c62cf93f3f65..8fa0772ee723 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -325,9 +325,11 @@ static void report_found_node(struct fw_card *card,
 	card->bm_retries = 0;
 }
 
-/* Must be called with card->lock held */
 void fw_destroy_nodes(struct fw_card *card)
+__must_hold(&card->lock)
 {
+	lockdep_assert_held(&card->lock);
+
 	card->color++;
 	if (card->local_node != NULL)
 		for_each_fw_node(card, card->local_node, report_lost_node);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
