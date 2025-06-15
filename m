Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6FBADA1F2
	for <lists+linux1394-devel@lfdr.de>; Sun, 15 Jun 2025 15:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZV97W3UVSz7Y5m0l47tZXoyIREY1NZ0iNRrh0nN3EJ0=; b=AO5tCxAkxgONfJ6Qp/udgfaTfo
	6zwNGjM5KmVro7mElxePdl+8qddfE808/s0S/+2oikrO7/Qs/sxKZdcpszBuIOcEdyioMaAqvJyU5
	aGfH4iwprw1FgoJPn5XSJSG3X+kqaMAFomSBsm5j3YIcUp7cxim9pBHU4FtLYfay2TRs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uQnU0-0007W8-DR;
	Sun, 15 Jun 2025 13:33:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uQnTy-0007Vz-TF
 for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vzFryA+NN6Ht/0dOq5eL4QdUkSuCzecwwDqk0+RmhrY=; b=WIK+RAQ5jYA00GYcsCWrcuglR5
 4FXcmcpa7ZRA5PKFQlfRe139t6+cjpeMCcmBgJKcuA6X7JKii19l9ix2tdyZJLkU4bdp2KHetn2rx
 8cNjj4b/tXc06B5ToFJaUaQnAyiIBEtwdOn1GOp3WaWZ8AlNIM5AfKY57Eso00v+rqEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vzFryA+NN6Ht/0dOq5eL4QdUkSuCzecwwDqk0+RmhrY=; b=Q
 Y5TCmt0vRxxz+MTedFF9N/2XVn2Byu36dR2Q4S0LSum6/72BGB8qz8AWR7m7gNu69rZEbwb20zNFa
 rGd0I/D0exEqA/6vynH6epQHHzJe0uoB1LhsI+eP1bwQIGRMp21oki6Fp/PhXFyZ+LWAIUP3Q1AKa
 8Xv1WaLJO60G+oFk=;
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uQnTx-0000CO-G5 for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:10 +0000
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfhigh.phl.internal (Postfix) with ESMTP id CE44911400E0;
 Sun, 15 Jun 2025 09:32:58 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Sun, 15 Jun 2025 09:32:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1749994378; x=1750080778; bh=vzFryA+NN6
 Ht/0dOq5eL4QdUkSuCzecwwDqk0+RmhrY=; b=Vx6Wz6n+/jAbOFHo5vMNusUEVB
 QIUQBe4GH4O2qWmrBbQ/NX2zbNpGCCF2CiL4oNlTa1MfmJwTcvNJKcFXOhdWK7Gy
 rvlrQDu7QXMsm1KmeqE8oL/TN4X0Fp8i+QQblwJoxrxsYW66igZK3RSeEwNXQcOo
 LLOYIuZKTqS+Ua1t4TZUHIIN1MKiQLAeFwKdv6x/MfnqowsIP29GahAdpkRLYiuk
 Ienc5Q1ang2Mk8n0j7zxZkiGvmYnE50qSUGDTgx7qWyTi7YXvecPdAYYpEoLRARh
 0c/qhgtsyXgnBa0OzrXgXyXovxv6h9+HKGReHg/gj/dnAAtDrWzdaUKt2tkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749994378; x=1750080778; bh=vzFryA+NN6Ht/0dOq5eL4QdUkSuCzecwwDq
 k0+RmhrY=; b=bsflmaciIB78rlTpfs2CNozLnC12l3w3deWDOxJ8zUASX219mMj
 rwzTN5AvKf6/nL0KZxm/GVD7Yn1sZW9+0DUK89uupmOqFiQtrrUPrmoZCa27VxZr
 feuB9syEv8hAy6rNh8C9k3dDtQPf0KSOXLr4r0BKHyCWTQdKaKJH4bBYf6oddXMJ
 NHNYb62I17HGS6FHrc4eDUcVuxof47fpvZ/IQDXqP7c5SGO2d+d5dEkjmYNt6GrS
 Il/z55BCVfOMmrvvGhtOTk0RWRTVSw7jsHuIj2viYfQjAY57IdL7ngz9eafDe+D3
 W8QnwuBJohgS90GXI1kHiMpvA4Z1GVvzxvg==
X-ME-Sender: <xms:istOaB-SPmjZbguYhps6jroAfNL9ucDwa9GcYmdAPOKnfn9uMvFmhA>
 <xme:istOaFstdngSYPt0MtJMOmOnU8xF5tte-ljoRnGdZndccG5NSD3c40alu7aPP1Zfk
 dwLFV_AveQUthYNWpw>
X-ME-Received: <xmr:istOaPBpVSjK2cCr6volY23EuwXtE-QPyZP_OIb87sBgbmgxVUraizGyFi_zNRdZDBFYe0Bm1UnbP8ha1ybfXvpb8535berbzKJa0ezfJ4MjYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvfeekfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvve
 fufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepgefgheelheejieelheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefh
 vdeunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhr
 ghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrh
 hnvghlrdhorhhg
X-ME-Proxy: <xmx:istOaFcnr_dAL44vozyMHsCZiQwXesPxzdZoCDlCe7642QWfJDtJKg>
 <xmx:istOaGOuY8UbSjeLpl4nSXapsdMr02Z9TTMwu7ShoM-xsEk63i72Xg>
 <xmx:istOaHnOSLjSlPAhDjJadXSZvGC87J9tql7To70nrqR0suKwLVhmDg>
 <xmx:istOaAsxqpjRLwz5yG7w1SNxtrJkRyxC53X-FmAOy2_li6uvqH7WbA>
 <xmx:istOaLdvoxowxJrUCajhwgnaUaS7xnSOVU9vtmkGUXRrozj0A4nmlQkF>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 15 Jun 2025 09:32:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 0/3] firewire: ohci: use regular workqueue to handle 1394
 OHCI AT/AR context events
Date: Sun, 15 Jun 2025 22:32:50 +0900
Message-ID: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This is the revised version of v1 patchset[1]. Last year,
 in Linux kernel v6.12, the bottom-halves for isochronous contexts of 1394
 OHCI PCI driver were changed to use workqueue instead of tasklet (softIRQ)[2].
 I have received no reports of any is [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uQnTx-0000CO-G5
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

This is the revised version of v1 patchset[1].

Last year, in Linux kernel v6.12, the bottom-halves for isochronous
contexts of 1394 OHCI PCI driver were changed to use workqueue instead of
tasklet (softIRQ)[2]. I have received no reports of any issues related to the
change until today. Therefore, I believe it's time to move on to the next
step.

This patchset updates the driver to use a regular workqueue (not WQ_BH) to
handle 1394 OHCI AT/AR context events. Unlike isochronous contexts, the
asynchronous contexts are used by the implementation of the SCSI over
IEEE 1394 protocol (sbp2). The workqueue is allocated with WQ_MEM_RECLAIM
flag so that it can still participate in memory reclaim paths.

With this change, all remaining uses of tasklets in the subsystem are
completely removed.

[1] https://lore.kernel.org/lkml/20250614113449.388758-1-o-takashi@sakamocchi.jp/
[2] https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/


Changes from v1 patchset:

* Fix "error: cannot jump from this goto statement to its label"
    * https://lore.kernel.org/lkml/20250614113449.388758-1-o-takashi@sakamocchi.jp/
* Fix indentations.

Takashi Sakamoto (3):
  firewire: core: allocate workqueue for AR/AT request/response contexts
  firewire: ohci: use workqueue to handle events of AR request/response
    contexts
  firewire: ohci: use workqueue to handle events of AT request/response
    contexts

 drivers/firewire/core-card.c        | 48 +++++++++++++++------
 drivers/firewire/core-transaction.c |  7 +--
 drivers/firewire/net.c              |  4 +-
 drivers/firewire/ohci.c             | 67 +++++++++++++++--------------
 include/linux/firewire.h            | 12 +++++-
 5 files changed, 85 insertions(+), 53 deletions(-)

-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
