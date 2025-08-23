Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5178FB3268E
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Aug 2025 05:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+AS00wNw8K/Na2DJB7n43OYsZ1K5A1SaMQiWmZVxcsA=; b=DQ2L+eGJmYMyWUSpfo3b3fm+q3
	DcZzVCgOWFfkXRlLt/aVC9mnwUFPKwbHZ52aF5s/F7J5Lgb3WvbX6AoRfWfpax1CoBWTSR8GyO8E/
	ykL2hPuHTYoHGFfgK9UHRRqbo21FB0T49lfxM4VOdqmxVXFUEYdvfgQlRsFsE4ueiotg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1upedv-0000y9-BS;
	Sat, 23 Aug 2025 03:10:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1upedt-0000xq-Q5
 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6WQuWpLN64nSKRPafbdR0IvhPYjUj8JZCAZ/hao9bl4=; b=gPi/0M4rrzfBg6DDTWsDb4xGsf
 GJeCuixZhMegx31vaYXFpNpcGSY6fY0luaTUcvN8i7nPsTk898e3k3ukfS6EIr4O1m11SO9G/REFl
 x1VdtMAlMgQXco/9VzQFJxZQ023ZAE7VKydX0IxUAOBCtCW5x6xecCZcoLjlfAhW2eRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6WQuWpLN64nSKRPafbdR0IvhPYjUj8JZCAZ/hao9bl4=; b=V
 6ql+lTyIw7EvtMv16dCVqhrze15t7bg+AoAC4lzCCEYEjkPsfCUMVrpg7/Yj6OSi9qfeZZPTuxxeQ
 4mWXJOQXDGAyaAYNv1saK4ZuiJXhb+XKYD2YIQg0cUvWXoolBmDfKnTGNsXCZe18pqFdSLe3askrC
 Ep4EeUXStNfdgPF8=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1upedu-0004Ty-6F for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:10 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id 806C7EC00FC;
 Fri, 22 Aug 2025 23:09:59 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Fri, 22 Aug 2025 23:09:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1755918599; x=1756004999; bh=6WQuWpLN64
 nSKRPafbdR0IvhPYjUj8JZCAZ/hao9bl4=; b=BikHCDGk/ulZnGRmvVpPzRKVX2
 Tt0sxMdJ2BqlAREpprSZsiarP+j7k2J1eBKtz9HvKa9jAuyMjnVdbCyIU8pwVkfN
 +lPFyEUFeCuyWtcRQpYSRJ59t36xT8/SbBthAZAPrmNv1nt8vOB6AHHqsXnzgFqG
 FURvuCPF+XzVS/REs6LhoukLNAoJHkiLUvPrRnOC/i1+QjgJ5MPncpPVUy0FQS4t
 +ETRAPwT8qgl2D70+6++qPRgWCAzc5iFKPRRkU4o/D9hYXLuqCG0Zv8+MYVvKdsx
 JRpOtaVk/U89+2FGmj9T6sQjBYw30zeAT6FBiH4+moxakElaLWLtcI56SgCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1755918599; x=1756004999; bh=6WQuWpLN64nSKRPafbdR0IvhPYjUj8JZCAZ
 /hao9bl4=; b=bZXeJADrDDhHZu3jS4Tw20MfYbRo9R2UMrgknbqAkYUYQ+RrRMh
 nxbwW6eLVCg8BucNn9AUdbeifOroDjSJyfKFYT3ZP2X/850JdO3/mxM4DVnknnG0
 rUMotR3CG5qWoGoJT1ZrlSew7HRp+s4xFAsR2HjSntuSOPw8gAz6owwLiQz6iHsX
 tAKTAhwbBoZNy5nHNhNsqcWjpWFWJqCyVs49WAKq7x2aZ755YcOqTi/GOdjd2Qro
 77l7HLoKKEjzQPq/IpxY8wjAyADTzhLlH4F+5Od8QzP2nsj2rfD+Kaix+edSDiY4
 3rlyS9griWp8dFPWEpdJGw54pXD2cvRrVpQ==
X-ME-Sender: <xms:BzGpaCxFh-Z3lKjUTDOYxmj6uyUC1vHuHRE3QTHdEiLikr8H9Ih05Q>
 <xme:BzGpaHN5FIZfr6F09F7KzkzuEHqYqfeB2a3UZIR0MNpRq80XpugpVtXPYhMjhf3fc
 C4GJJEBl_bX0188dKw>
X-ME-Received: <xmr:BzGpaGTzcMlC4spb_tPew0w2-T_LYcVtglmSR1zfOEvo7mRvMZAGB-tQXwHrXyrCblLJd5xc7I7PRHsCDo4fmSPySklQQTl-HI4olFG6oFMOiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduieehheduucetufdoteggodetrf
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
X-ME-Proxy: <xmx:BzGpaFYsiDPNv1SbO7MKO8xl_cBJJVgwWAwK5TyhNJ1Ud-e0svIJUA>
 <xmx:BzGpaD0c6m0pFBbBdI_mXTzNJUGXMCEnaKpTKe2noWybdEoOrGCvAA>
 <xmx:BzGpaFXcxkT6j40pf-LzVLC0cLioytXgEAmPng8yUdbRyjN0Wauygw>
 <xmx:BzGpaNWxxq-W8wn5LF4L93Hl1GUxvzRB2Rj4pWPxwyCPe27SrTOOaw>
 <xmx:BzGpaL2KpaqrKOcdPoUvGVOied_8-OAz7NR5aQNuT-AuwtPXLdclHiLq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Aug 2025 23:09:58 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: ohci: switch to threaded IRQ handler for
 SelfIDComplete event
Date: Sat, 23 Aug 2025 12:09:51 +0900
Message-ID: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset replaces the module-local workqueue with
 a threaded IRQ handler for handling the SelfIDComplete event in the 1394
 OHCI PCI driver. The SelfIDComplete event is the first step in maintaining
 bus topology. It occurs after a bus reset or when the topology changes, and
 must be processed outside the hard IRQ context due to the latency [...] 
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
X-Headers-End: 1upedu-0004Ty-6F
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

Hi,

This patchset replaces the module-local workqueue with a threaded IRQ
handler for handling the SelfIDComplete event in the 1394 OHCI PCI driver.

The SelfIDComplete event is the first step in maintaining bus topology.
It occurs after a bus reset or when the topology changes, and must be
processed outside the hard IRQ context due to the latency involved in
enumerating the SelfID sequence. Historically, this was handled by a
module-local workqueue with the WQ_MEM_RECLAIM flag. A threaded IRQ
handler offers a cleaner and more reliable solution, leveraging the
kernel's common infrastructure and eliminating the need for maintaining
a custom workqueue.

Takashi Sakamoto (3):
  firewire: ohci: move self_id_complete tracepoint after validating
    register
  firewire: ohci: use threaded IRQ handler to handle SelfIDComplete
    event
  firewire: ohci: remove module-local workqueue

 drivers/firewire/ohci.c | 61 +++++++++++++++++------------------------
 1 file changed, 25 insertions(+), 36 deletions(-)


base-commit: 8748368c3d92f7bdef67c90d3f62ab92083b3677
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
