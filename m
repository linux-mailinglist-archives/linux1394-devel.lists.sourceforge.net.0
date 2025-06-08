Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D59AAD1615
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Jun 2025 01:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kM0yCElNz/FDRB4hvSHzkrlUbtrMfu0ndyGHxMcSWbM=; b=h90/8jTnW6BvG2zeopMVCQpFB4
	0GUxZzYR6mqNrpcTQFGTgsWJpVoAVNDLW5P1BwIRDeHajgBLe0ZFs+IuXDHnNaXf8VD/o8MTjFUqn
	gci3SNtKdJRJGG1giM8ntISJUTK30jynlBT+SbCpoCK4as1EOu9WxkpsPhA+oDgH/g0o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOPnH-0006KN-GQ;
	Sun, 08 Jun 2025 23:51:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOPnG-0006K7-4d
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=asezo7wgD0P09a8YPAx032aUXq2d/5SDAKgsL4qpYEk=; b=f2wMlYwaWu/ydulKxAasYY1oRB
 LOxiMCehbYf8w+ZneP62DdJB8T3t4tWIoCXht5mH7bLp0nbIcMaoGXBZPyuBYcK1n6AdqM3BcJ7qa
 yCBQLHaE4nVTgT9WXNj2a3doB5nc3Ye4Zxd7HoP92FkaifbLdlJ+7kvyGIKbP20Rev/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=asezo7wgD0P09a8YPAx032aUXq2d/5SDAKgsL4qpYEk=; b=I
 fObmve/lWM/Orps7eC4MN9vlp7nT3ka9rTGAlIWr6EYVyH7TYYGYOYi//50YuG0LLH3df/OIfKrge
 ljS5szAKP+X0FhDEVZBqoBJV35/KmqemmJRAzRrSnEG/fVhkQqq8+OkMjOU3tS9kGsn7jhlpuPebX
 QX3FKqEjUEAKBD1I=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOPnE-0000pP-RP for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Jun 2025 23:51:14 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id A4A4E1140155;
 Sun,  8 Jun 2025 19:38:13 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sun, 08 Jun 2025 19:38:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1749425893; x=1749512293; bh=asezo7wgD0
 P09a8YPAx032aUXq2d/5SDAKgsL4qpYEk=; b=kxE+RtcK97ujbPllUahf0y0/gr
 GGVX4rc3y21KqCpSJnbstL8pLGYMAMV7GYvTf+IeftJhoDFUb5ozSvuAQ0mQyOQD
 Ow2kVHSQcU2tal3Zt36ESO8GQ4ogtJx5pjwx313u9jwL4WlUaZMDck0nK+c/fHkn
 fi4sgnEkDVcbGh2tKKUPKeWkOpUybYZZDqUBzuOudfOwfbClYj/tU/VOgG1/5r0W
 0MEyUd+0b/7uCP+lH/WyN5PHxZbn5XwcEtb/xeDD+gOz/Sjg3IXBXgwIwxLD0v+d
 6FD6f9ebRLerk4wJtnVM0Dn0jCyXHMMCPI15rXw+QT2N+k6y3JDqhY16Y+bQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749425893; x=1749512293; bh=asezo7wgD0P09a8YPAx032aUXq2d/5SDAKg
 sL4qpYEk=; b=WAir7bk4KhcidaUg8WjAIUKJ/yf3xNgPHugJOYNRctPxGx5pVvM
 L1zkvk+Ss+9DSnJldO+9r+s8JTUXAzkpaLRkc4flelB09xmkNAskvG1SkqYM7aCU
 HQgNf7XJ8DO4bBrJQEGvUknAWD1CR2f9pmlH7iD+dL4mnK5SR2EHlmMnH1m9Hkfx
 +YfGh4kwHA4924MNN/6MDx2Fpd1LxTjg1YIBFn8Vz6h8rXjrEVVaqc0H3ixkQeHH
 x1HD9KCNy2PoHSLrcWqLePZGP5qfSU6LzQtTmlU9bx+fLf3IUg9S/T7G7uCzfL+r
 4flBi75jP09tH7proNDVeUlWKvG5SbPyhXA==
X-ME-Sender: <xms:5R5GaPSCOJYN777DjSHv0RsiP-Pk0Rf8bhzh-C5agCd_-PtMPbaPlQ>
 <xme:5R5GaAwWnVQFs6CMP5hueE-F2R4u6T0JVMueyx8mg4THH0lAcPQPWmqMqxwakZ4iW
 nkgCQakoJCYbUoDMj0>
X-ME-Received: <xmr:5R5GaE2DIdsl-CiMBE0QsJTjgcJ8h3JvpK2DPWi2Hi2rKP1NQ4-oV_gKio4A7x_hzKEiY0yRAOYErNMH6MfufeFkNg2B9mFL0je8SkRNS05rKUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdekhedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5R5GaPCBG38vlIUK7hUS7GZp8lDi0z9_rztHSFZN8IkyVSpng7OY_Q>
 <xmx:5R5GaIi39_q3D5D12jiZEQOK8yODFvtI7i_CEfBM1P6XpEsn6eEylw>
 <xmx:5R5GaDrxowyjaW86XagxknqUJidQ3EIjGbf5uHep28m6lIu8VBFf3Q>
 <xmx:5R5GaDhjncyNmZ3n65JmFJ8Krq8mrHF68orDvJGIsLemKnToVqd4XA>
 <xmx:5R5GaLVdlzjt2VW7Bfc4-ffIQEO6swehJJwdG_9vj-lLZUOm94r7sVKp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Jun 2025 19:38:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: correct code comments about bus_reset tasklet
Date: Mon,  9 Jun 2025 08:38:06 +0900
Message-ID: <20250608233808.202355-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The tasklet for bus reset event has been replaced with work
 item, while some code comments still address to the tasklet. This commit
 corrects them. Fixes: 2d7a36e23300 ("firewire: ohci: Move code from the bus
 reset tasklet into a workqueue") Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 6 +++--- 1 file ch [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uOPnE-0000pP-RP
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

The tasklet for bus reset event has been replaced with work item, while
some code comments still address to the tasklet.

This commit corrects them.

Fixes: 2d7a36e23300 ("firewire: ohci: Move code from the bus reset tasklet into a workqueue")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index edaedd156a6d..27e3e998e6fc 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2528,7 +2528,7 @@ static int ohci_enable(struct fw_card *card,
 	 * They shouldn't do that in this initial case where the link
 	 * isn't enabled.  This means we have to use the same
 	 * workaround here, setting the bus header to 0 and then write
-	 * the right values in the bus reset tasklet.
+	 * the right values in the bus reset work item.
 	 */
 
 	if (config_rom) {
@@ -2617,7 +2617,7 @@ static int ohci_set_config_rom(struct fw_card *card,
 	 * during the atomic update, even on little endian
 	 * architectures.  The workaround we use is to put a 0 in the
 	 * header quadlet; 0 is endian agnostic and means that the
-	 * config rom isn't ready yet.  In the bus reset tasklet we
+	 * config rom isn't ready yet.  In the bus reset work item we
 	 * then set up the real values for the two registers.
 	 *
 	 * We use ohci->lock to avoid racing with the code that sets
@@ -2659,7 +2659,7 @@ static int ohci_set_config_rom(struct fw_card *card,
 	/*
 	 * Now initiate a bus reset to have the changes take
 	 * effect. We clean up the old config rom memory and DMA
-	 * mappings in the bus reset tasklet, since the OHCI
+	 * mappings in the bus reset work item, since the OHCI
 	 * controller could need to access it before the bus reset
 	 * takes effect.
 	 */
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
