Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6D79699DD
	for <lists+linux1394-devel@lfdr.de>; Tue,  3 Sep 2024 12:15:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slQZT-0004k4-BF;
	Tue, 03 Sep 2024 10:15:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slQZR-0004ju-5g
 for linux1394-devel@lists.sourceforge.net;
 Tue, 03 Sep 2024 10:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hievqMDYxfTONiyF8th4rDfFHnRvVJ8WTM3zZAohKSo=; b=fkuTaRhX4ygFe4Ly3Jok2TCWe6
 pfNjSyNQ8fNWQ+BhijDyAQfb/rFDy5lldxMsd6T8i1e5Gq5BJlcgBjtBBZ8SxlqFU8cskqzqpGZ9O
 QSZp4a/h1MzHbb41YLlqaUe8JZhFI/KsfgCNxUhZFqYCTl0h2wtJAMAAOpIvVxqEUZKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hievqMDYxfTONiyF8th4rDfFHnRvVJ8WTM3zZAohKSo=; b=L
 Ikdfgyh7vibUDT93X0fqN5a+r1NzErb7C3ilJDtZUgfBUS/3SN5EPyKlMm/Zo6DNR93K5Q1BAKso3
 MlUn06/QDhxvJRMY4EgjkK5EJhuveEEa6ftEoSvAHBRyXOcahbjGPQZj6T2Sb2I1aDXdyQ34j/Fkl
 gjulA0jKzPZD6LHQ=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158]
 helo=pfhigh7-smtp.messagingengine.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slQZQ-00085S-GG for linux1394-devel@lists.sourceforge.net;
 Tue, 03 Sep 2024 10:15:33 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id EDEE91140100;
 Tue,  3 Sep 2024 06:15:26 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Tue, 03 Sep 2024 06:15:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1725358526; x=1725444926; bh=hievqMDYxf
 TONiyF8th4rDfFHnRvVJ8WTM3zZAohKSo=; b=cSLMPLFktmplNGaHNwoeAaYyZc
 S6Um4dWP4cQnpmmUIoPHX2JBBGN92pXhMIaYEcrJwWJ2A0p0x2BJeqYoF3BmJHhz
 Ae6cu0Nemawze80s2gSpQf899n4Rpf03/3odFBiao9V41m3JrIZSccSFztWBXi0L
 bhmyiKFWmwYf6+LaHUFMSoEu2PNqV50SLWdHMj5zk1QgOrZyrlsYIGAqgi7c3E1e
 6gRmv+tvcmlpvkrbrtdf8kAxGWP4SauJ0N9yMzLAw0S85e7MI87svgkf9o+eGykB
 +lBMh1/HloTZuwok+GH2K69NRiuqAKTI0GOCo+mK8abW695Ue7hA3FyduTGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725358526; x=1725444926; bh=hievqMDYxfTONiyF8th4rDfFHnRv
 VJ8WTM3zZAohKSo=; b=pkaA3Df1Lb6hzf8S27UsEXHjrwjb74RrVzs2H4PUn5kY
 c/xFT5bP/9IiolwQbfGcx0h7DL72gtJ1hvDQ6+h643drKDf2bwmtS0skIPRcyawd
 azC0u0upH4HOShHMxFdWQQYHU1srj9k0KZWwVobM9KrtV8AeGoarVzSlCvlWWSbC
 qA0LbUO3rhrxjDTSxDtz5Xuaf5sz3ZnEQQUW9kfmsDCHK0q2ldVsCeL+KDnflwOD
 EBolFXi6ss7nsECjIiE782d1R7x4+iYbfoGc7wRBHKomK1T/bXIKcr6KyF5ab3/F
 2hqL1SRXDjcM1SrgKtuqIhpttZxLthFUkxzRJUmrOg==
X-ME-Sender: <xms:vuHWZj0F5aBvNcVcBgB0Uv6PuYDOhx-RsVj25bgY0ajTB-4C9nr10Q>
 <xme:vuHWZiElakYQcKiCjHVwBcfQQ3k9Hut8vCFdp30xIsVksoJO7OHmAc2f5YaHOUea0
 2UJzKlKPVfGMX0ocs4>
X-ME-Received: <xmr:vuHWZj7NWSjty0DeozbvaolcsXvCQ9dzEBa_Dk0dmM3j6nKqMh_5umm23SAFpT3okp6aN-nCOGV13PHjwsq9tc71uJIE7Hu5C9E5bkFqUlVoGQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehhedgvdehucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:vuHWZo2DrRq6ozn1huYI-HqipG1JF88pAn38hxceFwhHAQ65E_Zekg>
 <xmx:vuHWZmF1UQiJdvOCCCkDNgbOSlIKVZG2l71t7rOnBnbsf0SWmMkY5w>
 <xmx:vuHWZp-8do5SBL04WzLxSbH04w7t8CZH25z900p3U34V9NTHj8hx_g>
 <xmx:vuHWZjm7No31pM5IOJpBWnhabwQAK6BOeL61piPIpci5yUA2Mz5uGA>
 <xmx:vuHWZrRtN51pSlboahwEvWXUenjKXPQQjr4tywg84PeHpKL0_YboUljL>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Sep 2024 06:15:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: obsolete direct usage of printk_ratelimit()
Date: Tue,  3 Sep 2024 19:15:23 +0900
Message-ID: <20240903101523.317110-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A commit 77006a0a8282 ("ratelimit: add comment warning people
 off printk_ratelimit()") has already deprecated printk_ratelimit(). This
 commit uses alternative functions to obsolete its usage. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slQZQ-00085S-GG
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

A commit 77006a0a8282 ("ratelimit: add comment warning people off
printk_ratelimit()") has already deprecated printk_ratelimit().

This commit uses alternative functions to obsolete its usage.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e662dc30c21f..3930fdd56155 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2268,13 +2268,11 @@ static irqreturn_t irq_handler(int irq, void *data)
 		reg_read(ohci, OHCI1394_PostedWriteAddressLo);
 		reg_write(ohci, OHCI1394_IntEventClear,
 			  OHCI1394_postedWriteErr);
-		if (printk_ratelimit())
-			ohci_err(ohci, "PCI posted write error\n");
+		dev_err_ratelimited(ohci->card.device, "PCI posted write error\n");
 	}
 
 	if (unlikely(event & OHCI1394_cycleTooLong)) {
-		if (printk_ratelimit())
-			ohci_notice(ohci, "isochronous cycle too long\n");
+		dev_notice_ratelimited(ohci->card.device, "isochronous cycle too long\n");
 		reg_write(ohci, OHCI1394_LinkControlSet,
 			  OHCI1394_LinkControl_cycleMaster);
 	}
@@ -2286,8 +2284,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 		 * stop active cycleMatch iso contexts now and restart
 		 * them at least two cycles later.  (FIXME?)
 		 */
-		if (printk_ratelimit())
-			ohci_notice(ohci, "isochronous cycle inconsistent\n");
+		dev_notice_ratelimited(ohci->card.device, "isochronous cycle inconsistent\n");
 	}
 
 	if (unlikely(event & OHCI1394_unrecoverableError))
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
