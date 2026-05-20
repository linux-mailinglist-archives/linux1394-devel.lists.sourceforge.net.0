Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEhCL3ayDWo82AUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:10 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D86F58E80D
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=baTtUQ+GCIRC9jBZc5u6zxMFlrpF0gT0GFPPzo9jT00=; b=cBopyFA1gHtZLgY14t/Te32IBP
	9mIwg5HgijoEKWI7HCp/kF5w6PYMLaw9g2mB3EDQWWTXvdz5xmuUYRwc/uUagWw34/IDal9XbkM/7
	G/cjy0zE0ecRLXhp0hrnxqJ35uZgQlahuvyPeoH1ySm+tdWfgiy1rX+vUkMzhBFXtmPw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wPgfa-0001HY-Go;
	Wed, 20 May 2026 13:09:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wPgfY-0001HG-Kn
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rjxL62UTomCrUsF2Dilin+962gsq0c28VKmcFFgLkUg=; b=bXVaE33S+WYkahAKHoNx2KcCW+
 A68SrxruVDlRLh+I2dVD7gPpyiguv9gCfjhX8APsdnYUD0ahhfdHkAil693q/NSN2REkjob7l8xLd
 SOrpSMHTuOZBx6qw0PPhEhGXN7Xpu2YP2AVo8KAbB3szrlVSP+woZV9mFNNzUbNQH/+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rjxL62UTomCrUsF2Dilin+962gsq0c28VKmcFFgLkUg=; b=W1F+LM8uMaEoQGkEqLKVNRG4l9
 c/iZdoz8oYzjgfx4MMOcN3X4huXJ3I7U3sBWPKtgaaObANmr8T0QMzg3mDmXd3KpDRQrvLSVnokTA
 IFIzZpjmDka/aTF1jp0NwWddlQn1lk1VznFk3EosL+uJCvWBi8sprYa5JS9PxfCZrGRE=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPgfS-0000Dh-Vy for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:09:02 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id DDF1E7A0151;
 Wed, 20 May 2026 09:08:48 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Wed, 20 May 2026 09:08:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1779282528; x=
 1779368928; bh=rjxL62UTomCrUsF2Dilin+962gsq0c28VKmcFFgLkUg=; b=b
 Y/1q8y/gDCTE9cuIFVjhnKjeh35czltRfbGIgaT0+aLHxruR+bWk33M/V6p2gQeS
 hmFvUSpKAf/cKhWDMph3rI9m4TzrK0zOWUJNu2gLZUr4sIAHFHVXlnV9P3BxPiH8
 dtW9R7mDkFI85I6YzF51wV/tYxFZyJ2ev0GfhtQJ3LJNNS0XVd9aPPOAUGf2TG0i
 mgZc7ERV9aQXgtQj1QAKgv9IGWeGSfDf7SbnInphqR94wYb2fp9j391f774KUVL5
 kj0BRLxoMeR1RZK4SG7X+FHwMnAXs/5cvA3r1eN+eFNq8D25TqW9qXyx8o0aMooB
 nZULWDR3A50tbBytzgxmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1779282528; x=1779368928; bh=r
 jxL62UTomCrUsF2Dilin+962gsq0c28VKmcFFgLkUg=; b=Msq34uUcRdXrb4dXX
 slt3KNRjD0kU5e2L02hN6Xi8+/vrTZu8R9/5MCY2YjqkUqUV3hyXBp0y5bnQVvXG
 6+eOo1wW2KWH3UqdhSuM3Y15ivCmV7ckhbKo4qAH14zpa5oBC9cw+Cb+O0zb8dwU
 BiPM35wjjGXSNEs8oE9TxU6znY61tVIbhLNEK8BsDLdsQBMrPIxmvNWcJ5K9nJ9C
 MZAL2VzSV4JnDVbosed4TpBfrb53/r39d1wgsGBABIHtITAmluRCUw8Esthpa2Op
 g0yXKIsRl8WfncmIhpvNWLU3fry3NIGrXLinLIabktF9R10GU9XFfHby6dK8yDmm
 VaViw==
X-ME-Sender: <xms:YLINapo68kxISvLoWqZbqlYh1qnVTBVbqN4a5GSfmCXGscHp68pTQQ>
 <xme:YLINapmYmx2Q0os99E9Y7vxAInBbXiXzkk9H7YLEXV3Sze_36zqidvzm5GhU9biQt
 GLRCGyGnm7jU3DBpjuI_qp1kMWtg7bXlaejM7vJJNrOu3TSXes--WI>
X-ME-Received: <xmr:YLINatzsK6saHyjWYNDdgj7Uhxaw2nsjG_X2Z0KmowwyvGeTGh6ER3YbaJetyyG2joou-CRh3CJeOQDXpKSDPMvNGCNU4qm2VjKLJxTpG-dI>
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
X-ME-Proxy: <xmx:YLINahlt6RgLzaayQfFzWwfHHQ-kN9V1fBS6WSQ07dDFGaSl2H82zg>
 <xmx:YLINamecCHCGjSqR9NAaWkV6FZ-9lYI2AjxJZ1T3UGTT7p2y33sMKA>
 <xmx:YLINanoZ9aL7cqcmbvUmUqQke6PYLNQw8XpQ7zUbXFEH83AXV8Anhg>
 <xmx:YLINak59NRTHiuTVVhK_FNoACKlWlDVX0Q-3CoXlw90HiHiSCfPpoA>
 <xmx:YLINaoevIWDJQgzaRay4E2Ozni9hG4aq_dypA_CqtI2BOZcXUJV7k92h>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 May 2026 09:08:47 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: core: rename member name for channel mask of
 isoc resource
Date: Wed, 20 May 2026 22:08:39 +0900
Message-ID: <20260520130840.629934-3-o-takashi@sakamocchi.jp>
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
 Content preview:  The iso_resource_params structure has a member for channel
 mask, while the name of field is easy to misinterpret. Append _mask to the
 member name. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-cdev.c | 10 +++++----- 1 file changed, 5 insertions(+), 
 5 deletions(-) 
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
X-Headers-End: 1wPgfS-0000Dh-Vy
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
X-Rspamd-Queue-Id: 5D86F58E80D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The iso_resource_params structure has a member for channel mask, while
the name of field is easy to misinterpret.

Append _mask to the member name.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c669c9e42d34..56c21cabc20c 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -129,7 +129,7 @@ struct descriptor_resource {
 };
 
 struct iso_resource_params {
-	u64 channels;
+	u64 channels_mask;
 	s32 bandwidth;
 };
 
@@ -1316,7 +1316,7 @@ static int fill_iso_resource_params(struct iso_resource_params *params,
 	    request->bandwidth > BANDWIDTH_AVAILABLE_INITIAL)
 		return -EINVAL;
 
-	params->channels = request->channels;
+	params->channels_mask = request->channels;
 	params->bandwidth = request->bandwidth;
 
 	return 0;
@@ -1360,7 +1360,7 @@ static void iso_resource_auto_work(struct work_struct *work)
 
 	bandwidth = r->params.bandwidth;
 
-	fw_iso_resource_manage(client->device->card, current_generation, r->params.channels,
+	fw_iso_resource_manage(client->device->card, current_generation, r->params.channels_mask,
 			       &channel, &bandwidth, todo != ISO_RES_AUTO_DEALLOC);
 
 	if (todo == ISO_RES_AUTO_DEALLOC) {
@@ -1402,7 +1402,7 @@ static void iso_resource_auto_work(struct work_struct *work)
 				r->todo = ISO_RES_AUTO_REALLOC;
 
 			if (channel >= 0)
-				r->params.channels = 1ULL << channel;
+				r->params.channels_mask = BIT_ULL(channel);
 
 			e = r->e_alloc;
 			r->e_alloc = NULL;
@@ -1496,7 +1496,7 @@ static void iso_resource_once_work(struct work_struct *work)
 
 	bandwidth = r->params.bandwidth;
 
-	fw_iso_resource_manage(client->device->card, generation, r->params.channels, &channel,
+	fw_iso_resource_manage(client->device->card, generation, r->params.channels_mask, &channel,
 			       &bandwidth, r->todo == ISO_RES_ONCE_ALLOC);
 
 	e->iso_resource.handle = UNAVAILABLE_HANDLE;
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
