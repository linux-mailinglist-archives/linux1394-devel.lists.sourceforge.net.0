Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HUnLpqx9GnVDgIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B97644ACF2E
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9eUAwLyZGXK4JIDPF1+yemf+b2uADOpWESerQV//R5U=; b=kD534s1pECCN6Zf5s5FuGgwPB5
	Cp2AhDVTDsx47QGTgBniUM+rqs3eLHHbogPW8U3GAzPEs51VF/X1UU1aj1IKKZvNm/kC3yWUUzBFt
	3LuyfFRE73CK5TSaeLEgVPbius5LBXhsY+y/Y/JJTy/g2X8NbTEiQLscX7j0yAFvHsWA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIoO5-0001Cm-6b;
	Fri, 01 May 2026 13:58:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIoO3-0001Cc-HP
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=minoxQrRWLxtlswx994I77qPZCsKZ06IHuCrrGS0zrc=; b=HJWDJpvh7So++vXjhV2B7+1u3n
 HnNi4q8IB19Vv8BGLLb+koI/s8He8C/ue5IgboG7nWM09hl1rqvpbC1TE8XiBO4XRs5n6tXSGCWN7
 98L1qW8yJRC40DQ+Rn+1bQ9xS25QqO/QKG9RmwliVwFa+bctExxUvz+YeDzED04Vw3V4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=minoxQrRWLxtlswx994I77qPZCsKZ06IHuCrrGS0zrc=; b=J
 K7e4GSIkqj3MUoN48nb0DQzavPd0swYjo2tQ8Ew56mdL9qKeSI7+6MOVfmiBNupc5PElSh/oq+RZn
 plBP50/ljXUaNq1gIXvzeL2UnKeUttoViAPzB5oUEgQL2DIvSE/aOVH90HyOF83t5XLAGTQWc6haf
 /M4gNWPM9gR9XOB0=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIoO1-0005hl-3k for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:34 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 563021D000B5;
 Fri,  1 May 2026 09:58:27 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Fri, 01 May 2026 09:58:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1777643907; x=1777730307; bh=minoxQrRWL
 xtlswx994I77qPZCsKZ06IHuCrrGS0zrc=; b=4xfZtjPi1tNZv/zNevuOco6FbX
 FSAfZutuq1mtYerwDKsHKd0HmziGAmA53/wAdmkcC5LiqUMTBvOLtj0VIIymfvXq
 TRWxDUdwWFpWJ4hp7b+8invFFF5FJd+3vKFTxUGiasG3wCqInnzUM+GfHMTKl2jb
 2YajKALvL4hhtwYaq8DuXC2YU2eweCGhsX0PRztdfyK9J3dER6c1BuYKOwT6Cr9d
 BGNLKt/cuXdzbVjV6MsauE3E1WGk2KaVKzXK4P4AHOXFZ05rzpANfu1+kv7cg2vR
 tGra8tkERofo3OT/h1wZNcoky1cxOxIFEtbdhjQdZOhkIpFq2AKj1pPpgs+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1777643907; x=1777730307; bh=minoxQrRWLxtlswx994I77qPZCsKZ06IHuC
 rrGS0zrc=; b=AtpvW/AMhLMTa5RtyHHzalrJ91rHatliaPJakxJPzjROjQMYqfv
 ZtIBRXO/ibOsdr7gPuJZ4H1d6o256hFwIobgPMDxj8P70II9Z56OUHeWqacCIMou
 vMxf6OOjR0k0v4WxMGlvC01prrKwqd7928BGnLPEEGL0AXY0A9NK5+Nh9jcgSrGJ
 Ges6SpfT7rVPelxCcIl45Rvr5/UyLqJfptZ5dEYJRGm6mEGBW8lfW7MgShNwHkec
 OJ0ZzOQAEZFcwusPYtU291KMtBwBnQIUR8HnyqHNVe1IvNT/kmnugBIf1twSe3Cr
 0TcrFuIQM3z8sf7zEF1p7m+9sgJ4QMNzodA==
X-ME-Sender: <xms:grH0aQxPnN6LjH4iif5c1LnBEUWaZMMZZ664AymeX9ktOjo42htOTA>
 <xme:grH0aSO5fKaZBGUqF5C7uwBEYziQBwcQ9RF-1ZQTh9fPnN5JRu5iBonUdxSdvdayi
 6rW7H5lyK6fOP2izdF-z-8iVxHtVPytMIhoJrStw5YV6i8uOLdwa2I>
X-ME-Received: <xmr:grH0aZ7DeuEFEd62Ev7Sq8q-Pifo_q_xnmY4vUT33ofSm2ZWSklr8zuxS-akHDIfhSNInbz2UytxVcWf-PkLKs40wEQ2MQ-7NYo_ba1KxHjpDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeltdefkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelhe
 evfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:grH0abMpRURJpR3tgpdFJQdUWBM6RQlyFliAZo7Q06qPQpEvnUy5XA>
 <xmx:grH0aflFgrtEjdFTyzb1Oh_PCdVQMfOEWV_IE85Odk2RMfmjQqkCTg>
 <xmx:grH0aaR4swKaXkv1sC5St6QoF6eATxhahW1rn4pexChbR21QBH-OHw>
 <xmx:grH0aTC-ewhQ2ocx8twus2NaWYEGSWEd40HnD8SVqxIGlLDfvpd_Cg>
 <xmx:g7H0aQkhhRa1PclyjBzrGHyjKYT49K2iy9nhCTvE2KQmEIN6bT9lfI3a>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 09:58:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/4] firewire: core: code refactoring for isoc resource
 management work in cdev layer
Date: Fri,  1 May 2026 22:58:19 +0900
Message-ID: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In the cdev layer of this subsystem, there are two ways
 to manage isochronous resources. My previous work separated the logic for
 these approaches[1]. However, there is still room to improve the curre [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wIoO1-0005hl-3k
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
X-Rspamd-Queue-Id: B97644ACF2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

Hi,

In the cdev layer of this subsystem, there are two ways to manage
isochronous resources. My previous work separated the logic for these
approaches[1]. However, there is still room to improve the current
implementation, particularly in the code path that maintains
isochronous resources managed by the kernel, where the current code can
be simplified.

This patchset refactors the relevant code accordingly.


[1] https://lore.kernel.org/lkml/20260429093449.160545-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (4):
  firewire: core: reduce critical section duration in pre-processing of
    isoc resource management in cdev
  firewire: core: use switch statement for post-processing of isoc
    resource management in cdev
  firewire: core: refactor notification type determination after isoc
    resource management in cdev
  firewire: core: move allocation/reallocation paths into specific branch
    after isoc resource management in cdev

 drivers/firewire/core-cdev.c | 115 +++++++++++++++++++----------------
 1 file changed, 64 insertions(+), 51 deletions(-)


base-commit: 6dbe7653fa01edeefc77b4d7c063562eb3debd48
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
