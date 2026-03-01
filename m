Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMmHDs2so2kmJwUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Sun, 01 Mar 2026 04:04:45 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 796A21CE2F5
	for <lists+linux1394-devel@lfdr.de>; Sun, 01 Mar 2026 04:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2MV48ZorPPB29MEphW02mzUnX4AmM4j9j2hC4G2wMf4=; b=gF/1XgVtrTugZxNzWk1t0qRlII
	+VhTHRzuKV2LTZ1yAuby//VumI0kA5zG10ksnDC+/Uw956uGW4pe6dh4crnmfNrHEiIv1DHVSy+XH
	wpad+X8T8bP6DIR7wGK93+AOt0KRknYIFxWDIt7NCDroLVcVRAwXmd3htpeKCkqcJvIQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vwX6Z-00019M-R5;
	Sun, 01 Mar 2026 03:04:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vwX6P-000196-Oe
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Mar 2026 03:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O36QvmDB7oz1LOKbNUcSaOHs5z9hmG3qTYs1ok2hrm4=; b=CHLO10r95Ubf3p3sFK15xlYT2+
 TyqyR0YFWnomQA89pKpBVmALtdZlRgSWiCUP1njJACtqiL7/00QiDWuvylEqBABlUK0GG9iv7Exyo
 szJsKWlHGUQaLiRr6MpSPubpU0qNNyookZsdsiRi6rSZYYwxORt4mc7xENE1ke4WvFj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O36QvmDB7oz1LOKbNUcSaOHs5z9hmG3qTYs1ok2hrm4=; b=l
 ca7SuFBPmOW8PZooFF+Ihe7+li4FQzvhVX1JfBvZtjIlwV72kRioJzOjXNEGY4bG3TMt319hFc8UK
 pSEBS6SadWjNjWIJT309KFfTqFHqjBWBL3NWuOflSk/XjQaJH1divpUDjCv4StTW/DBxU31VVKsvl
 K8k22cqrLIvV0pCY=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vwX6N-0004cR-Vv for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Mar 2026 03:04:17 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id 1DD691D001B0;
 Sat, 28 Feb 2026 22:04:10 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Sat, 28 Feb 2026 22:04:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1772334249; x=1772420649; bh=O36QvmDB7oz1LOKbNUcSa
 OHs5z9hmG3qTYs1ok2hrm4=; b=uZDVGSzSf7K1K5unPSRpdkgeZTb1LKhiqL41W
 H6C2o/8aH+3HvRzWc6mmJqkJ+w8Vidfj8Q3PiXyNxMug77l+fTF7Ka1i2EtV6NaC
 KNJgoYHpuBlYDEL1nznGl42YU5RQ97PWpBvV7gtFAhX00cRIU/BHM5vskjIgbkRO
 oU8SKltofGJ5f0Ws15PkLYqUA2SbKb0dhHJfuQn4zbsqY68vAiO7bYEviSwyM9Ov
 I5DdxiEft1L5SrZuR9elyqqPEUc8dsTpTRVIy5Blc1UsRJSnX/7qD3JorV30PKQz
 tresd4Z6Y6nNXtD9GGAct5wlhRVycuhnlwZmoqytjTFkB1JLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1772334249; x=
 1772420649; bh=O36QvmDB7oz1LOKbNUcSaOHs5z9hmG3qTYs1ok2hrm4=; b=D
 oRcfVcn+1jHagl/wPY1plePNYiu96Sk/D6Cv+MMQkxY2KLXdw/eBMkm8JWrYmi4A
 CEbJ2PY6dxzHH/ixiPsHLLY8nf+sb8oSJpOHYWSqfcJBAmKJ31lBBBGu0PGIhhyv
 jpYfGfdpY/pWlezK3eQPKVOuHq2LVfOgGaIFVHlZ9tVcO1iHqKzSRd89meGwSLJW
 yf6tUKUs797sWSEHQ0cXM/tvqJMBcmDyZloen0HIgfvt3jY8lsB2E5/VY2kwjQOe
 wo7en0DFoWfQ2A9yGYB291t9wEpANSFc9fjqBD26wosn75hPP1oklZPw6uK6fLff
 IXlOzCWj24e2Yh+ejAgqA==
X-ME-Sender: <xms:qayjab8F0J_nnUvIrajuYEjY2b0KUEjdZqp5YbnHy1MKf4dL4lH3kA>
 <xme:qayjaVga8LeL-CJi6Pc-UF3EI8dCr09mdSP3Qq6StBzJXgGk7NqT-9BrJYoQob4AP
 xEJGbjGwTb3UWzKjosh7l02JAWnz5cmOQc0KUi0DBaMwD5q3wToSQE>
X-ME-Received: <xmr:qayjaTd9R08JRDhTsOLOD4bdqCUesmijlzjUxsWm2BvgmbLeEX9sT7YNHag9Jy_Mq9Vp7D81mXus5Q3xlEZi2dJiQhMu8580zw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvheefieeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtohepjhhohhhnrdhoghhnvghssheslhhinhhuthhrohhnihigrdguvg
X-ME-Proxy: <xmx:qayjaUoIOmuRaNByhsxHJngyRQtS5_18xJFOVkVH4jJX6j7UuAm82w>
 <xmx:qayjaQAXSyOqfkXkwY5Jp1r-_B1yvxnQOd5EKnVSlbWEYD4qMsoArA>
 <xmx:qayjaZaxz8wweTXsFSPoIp1Ag8yFDFF-_Z6L86TUqh_mXOPom2YmAw>
 <xmx:qayjab7zVTvnMVnbBJCuXMm_SvcmtWSKuhWE-vKnAc0Eey8p9g11XA>
 <xmx:qayjaU1OJDtgEfxdDsu8OJWtlq5y4cx_LW7sTGWsjD12asryk07HYuWP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Feb 2026 22:04:07 -0500 (EST)
Date: Sun, 1 Mar 2026 12:04:05 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v7.0-rc2
Message-ID: <20260301030405.GA958286@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 john.ogness@linutronix.de
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply a single fix for 1394 OHCI PCI driver.
 The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vwX6N-0004cR-Vv
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 john.ogness@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm1,messagingengine.com:s=fm1];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:linux1394-devel@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:john.ogness@linutronix.de,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[workstation.local:mid,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 796A21CE2F5
X-Rspamd-Action: no action

Hi Linus,

Please apply a single fix for 1394 OHCI PCI driver.


The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-7.0-rc2

for you to fetch changes up to 7b7a12aec17d5605678e9d170faf8ba3e9f9e42c:

  firewire: ohci: initialize page array to use alloc_pages_bulk() correctly (2026-03-01 11:43:28 +0900)

----------------------------------------------------------------
firewire fixes for 7.0-rc2

Fix a bug to pass uninitialized pointer for page structure to vmap(). The
bug was reported by John Ogness with PowerMac7,2 (ppc64be machine) and
could be regenerated in the other types of machines.

----------------------------------------------------------------
Takashi Sakamoto (1):
      firewire: ohci: initialize page array to use alloc_pages_bulk() correctly

 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
