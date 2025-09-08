Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5C7B48200
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2V+WNDFhxYlCwFTT1y8iFtE0HIBvg6tS0HRm5EMnLI=; b=QyjXL9KBQw4lT/smZulesw1kDM
	5EjAPTpqreGUcwlCIWlLv2tDAC0fTO4mqXpQ6vKNgHMr/vDRkRJe8EzhIf0bdc0DuDmMPRg1tq10m
	k4PiwAkeXgHkp0MS9r19qVR8JhBOkVCGDyxkytRHdFg9OBXWWd97ZnPzuUKHsYLAWi1s=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZS-0008Au-Vb;
	Mon, 08 Sep 2025 01:21:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZP-0008Ai-E5
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IU8eRzIzzoCn+klvIX+UYvGJSjMoL3fwFs3HuV6Tx0Y=; b=Bj/dOUwUH/comXFq3F1lhzWXlO
 EDZPaauDwSjeaWUji+zACLK2Yw7DzIr8zAOymgxYqKmvXq4nTqMPZBcTBCNA84g8PisBWHML+rxpp
 TZHVGcKCHyZXBa62wZdpGu9OjJw+G6IZINb2riK/6ksfB/pl8pqTSlDL5qOxrI5ijrO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IU8eRzIzzoCn+klvIX+UYvGJSjMoL3fwFs3HuV6Tx0Y=; b=jCqIlQ3oXvV7M4w7W0TWMaTWjx
 ObLV/LDG1dwItP4G6l8oIWXPudfE4JBmce7yf48gkzptwpZ6Q6ilNubHxd91K7ZepNxaXixTvom8g
 YsyThVrbkKkdOD6jF0oODx0M4h9p/iv+b9nOMIkOBhcSUBwQ/fhy5P1WVnUo6bV2fXc4=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZM-0001iE-SA for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:21 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 32A3C140002E;
 Sun,  7 Sep 2025 21:21:15 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Sun, 07 Sep 2025 21:21:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294475; x=
 1757380875; bh=IU8eRzIzzoCn+klvIX+UYvGJSjMoL3fwFs3HuV6Tx0Y=; b=I
 D95PfqI9f2K5md/n+nf0Mak+y3mA5wjL2mTxlRKuE1Jzgqj9KvdaY0lA5VM6Btg7
 nq0fWJFI+gHm0OZEKO9cstNkPa2k0STVRnaxKCVifdNVboGZpeJlnr5oyW6FUIvA
 b+fuQFSRIUJSzNahIBREogdAMGaQ22YbtqqstwPT66ce3RKDKCoueKKkgiqquLGA
 Rt5iFrSuZGZwoOhpj7LmaoThzmmF8FNc8zsVKN2H2WQ36bStaCxr7P+XXVOGDn8G
 9jVgQMUBcT6Xje10t87jG08AJZfxHzZ2bXiNbXL5f2c9sfvcLO+kyx1kmsmhznuR
 xwfk6RFqBveVZK5Vgg5mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294475; x=1757380875; bh=I
 U8eRzIzzoCn+klvIX+UYvGJSjMoL3fwFs3HuV6Tx0Y=; b=WYbXacV9FMlwlTKdy
 DXue8RWTHoZJgFPnr8/Pe65z2OvtYNMNd1RbsPGatA1KxJsEvV32ElYfMIt8166U
 jmmf22d4jMlEa836CJfjomrSun24lbQT//iF2uYqZSMDP3EQUaFRyBuOEl5R+W40
 22wszK+ZuEJPlkk8lGFUf0hQnThgJVoh9IwC02UCqJQmk6yKdBvSoccI4qWnhVep
 Np4XbZU3t0EFtx4wdPqmPDnrDHWgkrM9RBMF7DlisVm5OfsfHYEZ+xrVokQ7W1ia
 sjuAQwttaYrqUNEzXD19OQIBft18otPntG2SgXnR84rG1Lqfg+MnsYfi8ozMeoHk
 HlGgA==
X-ME-Sender: <xms:iy--aH3t7aQd6i7WQU4OLJLU3p_eSeGFZTj5x2gM4KYHwAHb98H1YA>
 <xme:iy--aPDprjvPv2R2Hiy-Y2YeyjqnbSjpILggTu5cbKbG6iEFs1v-QNA10P1aldecI
 uBf8pAA5A5k9uug024>
X-ME-Received: <xmr:iy--aJ0mf_btZ1bCAIMVZxls2UnIXb3NY6sXwQ3VHdCMUsmt6kjM7CWzUyCA4yvp13OrZ3FnfFlw891Tnd8FesHquc7_K6lSW4yYUYJWKFs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:iy--aJsxJcuxiYVDMM8D_SCAXiKwTu0IMCEikY7cKolR8ZZ2QA7SqA>
 <xmx:iy--aJ5YHcBkRw64jjJB_jWBiKQqJzhXp83FlXYxIFhmTTFgOFvlUA>
 <xmx:iy--aKK3QhRwt3wx5NX2U2qhyxrO7Qelui2Y3_FkiAJnzJUDIFMtGg>
 <xmx:iy--aJ4_hj9CeIfBeRqcB6QIFOexU74eLvQGChg9oEzLeCC_CsK2cA>
 <xmx:iy--aFaUXpKaUe4C1bgp3ITcrv_YaZHL22h6ZN1clLpO9w5JnUJbSkxJ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 01/11] firewire: ohci: use kcalloc() variant for array
 allocation
Date: Mon,  8 Sep 2025 10:20:58 +0900
Message-ID: <20250908012108.514698-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When allocating the list of isochronous context structure,
 a kzalloc() variant of managed device API is used. In this case, a kcalloc()
 variant is available. This commit replaces these lines with devm_kcalloc().
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uvQZM-0001iE-SA
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

When allocating the list of isochronous context structure, a kzalloc()
variant of managed device API is used. In this case, a kcalloc() variant
is available.

This commit replaces these lines with devm_kcalloc().

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 40851b120615..030aed5453a1 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3482,7 +3482,6 @@ static int pci_probe(struct pci_dev *dev,
 	u32 bus_options, max_receive, link_speed, version;
 	u64 guid;
 	int i, flags, irq, err;
-	size_t size;
 
 	if (dev->vendor == PCI_VENDOR_ID_PINNACLE_SYSTEMS) {
 		dev_err(&dev->dev, "Pinnacle MovieBoard is not yet supported\n");
@@ -3576,8 +3575,7 @@ static int pci_probe(struct pci_dev *dev,
 	reg_write(ohci, OHCI1394_IsoRecvIntMaskClear, ~0);
 	ohci->ir_context_mask = ohci->ir_context_support;
 	ohci->n_ir = hweight32(ohci->ir_context_mask);
-	size = sizeof(struct iso_context) * ohci->n_ir;
-	ohci->ir_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
+	ohci->ir_context_list = devm_kcalloc(&dev->dev, ohci->n_ir, sizeof(struct iso_context), GFP_KERNEL);
 	if (!ohci->ir_context_list)
 		return -ENOMEM;
 
@@ -3591,8 +3589,7 @@ static int pci_probe(struct pci_dev *dev,
 	reg_write(ohci, OHCI1394_IsoXmitIntMaskClear, ~0);
 	ohci->it_context_mask = ohci->it_context_support;
 	ohci->n_it = hweight32(ohci->it_context_mask);
-	size = sizeof(struct iso_context) * ohci->n_it;
-	ohci->it_context_list = devm_kzalloc(&dev->dev, size, GFP_KERNEL);
+	ohci->it_context_list = devm_kcalloc(&dev->dev, ohci->n_it, sizeof(struct iso_context), GFP_KERNEL);
 	if (!ohci->it_context_list)
 		return -ENOMEM;
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
