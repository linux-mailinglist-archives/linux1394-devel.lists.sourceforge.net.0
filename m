Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5FD9AF84F
	for <lists+linux1394-devel@lfdr.de>; Fri, 25 Oct 2024 05:42:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1t4BD0-0006bS-5c;
	Fri, 25 Oct 2024 03:41:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1t4BCx-0006bJ-W9
 for linux1394-devel@lists.sourceforge.net;
 Fri, 25 Oct 2024 03:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hGbndDvPKUT6KhzJcrOUEZbPMjMh5KNkkA/oX8Q0dNU=; b=B9eIf2GXjhenHP7y8A4qGs8Umo
 miVVDTzryzmvHvDEVliwxxqEIcKQM7oUNzFQmQKt1q6G03Qvv2TAs4Knh8kZGuTQFvDg9w6FO/b9x
 yg2jOhJLpKDn9Fz71d3q/5SreW8dM3RZZybQWT+ob22yNMthg5oh4Dhk6/pfpn1WeZz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hGbndDvPKUT6KhzJcrOUEZbPMjMh5KNkkA/oX8Q0dNU=; b=i
 VNd1zP8AZQ4gdvtD+mNMV1P1W/H3zsGVJI/KTROedXvvz3/78SkwhYiIDKB5zczm2eu9xtiOut1zh
 ZMosFYAKa2UnuC69D3dJJW3lanzqr5aVus4Vk0GDQ7HwjdgRtBTeut3zHTf5KFGX/e79U3WvrdaFx
 2uO+//e85T4H7HJE=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4BCv-0000jm-F4 for linux1394-devel@lists.sourceforge.net;
 Fri, 25 Oct 2024 03:41:51 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D025E114018B;
 Thu, 24 Oct 2024 23:41:43 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Thu, 24 Oct 2024 23:41:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1729827703; x=1729914103; bh=hGbndDvPKU
 T6KhzJcrOUEZbPMjMh5KNkkA/oX8Q0dNU=; b=shTyDLwQnYFZKH4sdHIYlvjwH4
 ojGjW0FglhBwTRuaKDXosPwWrNqAjTTfKCL/do/Zwsctuco3082v5qr//iaLpU4k
 ww6S39304W++AH1cTgt+lpKX4tKGDykbpWBdQVLjSW5jrqT7EdHvofMW2m7sLem8
 YNGU+T/u+5vhswYOqHKKjlwgERNVlHoI4ezcdwcnrMDxfCbTlQsVvDEk0P8Kx0AU
 9t/C8TNpG7zrhqtWaDkyJ5EkBE9KvDpFTZGkqPFr4GRw3FBytUFvZeOsj3y+IO9p
 6MZRiGk0lqA79kY6ZiFYboHyJ/sQ0UjBRX73FZPLARbJLTyPtBF8rVdeECHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1729827703; x=1729914103; bh=hGbndDvPKUT6KhzJcrOUEZbPMjMh
 5KNkkA/oX8Q0dNU=; b=XJPQT9pfH1uxMnbKR9Yi0/hufT1urt2HUSTjH1REm76Y
 p0KB+2Zd0ckmVFBs3z9VY4iCD/hy9/nd/OgrdbQk4qXVeu568MiI4agJsGAnhmHe
 0R/Q9bmH4EZC1OC/YLajU5ZHGRpioGsFq5UxenW/G1OHAjIIPB8rEU+Y9BzLYqnd
 Gn5CYtYsan640bIxt17nSrhw41yEPH5fZzR0KuZ57ybXCsIvfSn1GOAqlCqS0T3G
 XFWXMnMEutnZ2AMEZcXZibFHfoZYZevqgyN0muetAcYtvofmIWh3oeGB44n5K4vM
 6e7ONhF7OKlJjopU8cqp18zoaSXxZ16WcAYULfFHAA==
X-ME-Sender: <xms:dxMbZ7542-OO7h8ZeEqMEQxDiRe2hnJYXpsYgO9N7pukSDZWMKIDsw>
 <xme:dxMbZw45C45E80GqudxFIOG0SuLgExxqSBxN-Llmx1egXJqMSwY8FAr5esuCPdHK7
 ZfB8prmkBLD-6GIHUs>
X-ME-Received: <xmr:dxMbZyc3UkSJpZYUqlJC1A5J_Y5rVVrWrGf4DVTnHxDTTsdd53TkTYs5WPokv7MYJ33ejTUvASvqko7IOdqP-2_pkLnzkzesgW4W0S2tLqxHAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejuddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhephffvvefufffkofgggfestdekredtredttdenucfh
 rhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelheevfeek
 hfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghrnhgvlh
 drohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhm
 pehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhope
 egpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghv
 vghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinh
 hugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshht
 rggslhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepvggumhhunhgurd
 hrrghilhgvsehprhhothhonhdrmhgv
X-ME-Proxy: <xmx:dxMbZ8LxZeNrmFsb-Lza1Jd4KcqiRx1W20RWBqCk0trVdTVyr7lt7g>
 <xmx:dxMbZ_L_t8AZhhBtCH3ZU44Pf5ABWjisgfemKvufSkLJ19jRYPI8Ig>
 <xmx:dxMbZ1wCSq7F8rj0K4vLrk3wVFio3M0GVrqocqFI7uaXVim24Y2g-g>
 <xmx:dxMbZ7I6DxvypIxLRKc4mfk1SruYrq-c_v55vuklWJVumC-Dgl37rA>
 <xmx:dxMbZ8GtFlHLjNkP5wRRrFyMh0kqWiRi-TxbZzmbCBJq8s5COXpLDEN8>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 24 Oct 2024 23:41:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix invalid port index for parent device
Date: Fri, 25 Oct 2024 12:41:37 +0900
Message-ID: <20241025034137.99317-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In a commit 24b7f8e5cd65 ("firewire: core: use helper
 functions
 for self ID sequence"), the enumeration over self ID sequence was refactored
 with some helper functions with KUnit tests. These helper f [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t4BCv-0000jm-F4
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
Cc: Edmund Raile <edmund.raile@proton.me>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In a commit 24b7f8e5cd65 ("firewire: core: use helper functions for self
ID sequence"), the enumeration over self ID sequence was refactored with
some helper functions with KUnit tests. These helper functions are
guaranteed to work expectedly by the KUnit tests, however their application
includes a mistake to assign invalid value to the index of port connected
to parent device.

This bug affects the case that any extra node devices which has three or
more ports are connected to 1394 OHCI controller. In the case, the path
to update the tree cache could hits WARN_ON(), and gets general protection
fault due to the access to invalid address computed by the invalid value.

This commit fixes the bug to assign correct port index.

Cc: stable@vger.kernel.org
Reported-by: Edmund Raile <edmund.raile@proton.me>
Closes: https://lore.kernel.org/lkml/8a9902a4ece9329af1e1e42f5fea76861f0bf0e8.camel@proton.me/
Fixes: 24b7f8e5cd65 ("firewire: core: use helper functions for self ID sequence")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 6adadb11962e..892b94cfd626 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -204,7 +204,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 				// the node->ports array where the parent node should be.  Later,
 				// when we handle the parent node, we fix up the reference.
 				++parent_count;
-				node->color = i;
+				node->color = port_index;
 				break;
 
 			case PHY_PACKET_SELF_ID_PORT_STATUS_CHILD:
-- 
2.45.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
