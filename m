Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C74D7B27548
	for <lists+linux1394-devel@lfdr.de>; Fri, 15 Aug 2025 04:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dSgwLtzkrIeLQHfD5DuFqeufgdjbwUud+hAIe7ElfFY=; b=V9z0qJ2ctH5ysVr/HYREIVqMcN
	v8ia24Fhy6rDRS7EQQBqSXagqaRx4XI2eT9OIcsMJjeeoYgH2Lpk3IrWQKGVo7+RO0QPgzcrxSlJh
	CFyp40TtL1jLrQTF+GewybzCaNJYuhpEuH8ZJ9Qd54fZsDMEl5aES0DuCI3V25k7Dc7U=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1umjp5-0005V9-FE;
	Fri, 15 Aug 2025 02:05:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1umjp3-0005V1-QS
 for linux1394-devel@lists.sourceforge.net;
 Fri, 15 Aug 2025 02:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nsVOmspME9O+t8vj6HrlrcesarieFdua4vvDy3VQTiE=; b=MDUKKSHnYbafP7/P/NE+RA9Io4
 9s66RRHwpj2u+TkvHuf4/ixTOwZzqO0Nhy1Ydv/9Q7p3UOUxqSEDaBq66RFpPWkDm3mgdsI0xrS1t
 Bo8M8CPK1PL64g9H0rhGUX2ld5MQxpiDEjFipF2CouACDbAVQAmSJ2XyC/RKjvTnWbzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nsVOmspME9O+t8vj6HrlrcesarieFdua4vvDy3VQTiE=; b=C
 LdjGiJW7DyM7++UjAiN08U4y8axU86+00K73KTwbw2ZtSmiQFImZYug4RvBzXj4qQ9V2a0kLlMTq8
 BHKLX/GDMRrb8FWSYkL39J8J08N6igSjP1KkYjKkYYzw4LvuXrhvHNDt7H4dsX8dBjgznK08mHY19
 pp6i4aGo2YHzaZu0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1umjp2-0007Se-SK for linux1394-devel@lists.sourceforge.net;
 Fri, 15 Aug 2025 02:05:37 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 3F73D140011E;
 Thu, 14 Aug 2025 22:05:26 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Thu, 14 Aug 2025 22:05:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1755223526; x=1755309926; bh=nsVOmspME9O+t8vj6Hrlr
 cesarieFdua4vvDy3VQTiE=; b=qUpvBFj77igJ86dOLNa+mjlQT54hc+4TKU8Ut
 OuuqPP5CeeMbxKDeVv4VB5RjjADLqV9QUMPGAnIUNMDou7b4kZ5FxZDZ7aSJOuHW
 fV4shuDMwI13RbqIQ6k0Hl8mAmS6YRakW/gmt8LRb+FQwjvyzAMGz1gcStrrI0uI
 bSVSbU6dtBZugv0YdtiG75CHctuZZMMsiyvs/Ux3tyTP56N5kqt1+RPccBWaqeQw
 PIrLKBa89fhY2wC3DjTRNrO2GgtRe6AcGHGhtjgm0ZDZ01tyF/ZKEg5voyzUvv0p
 l8a5UUUfsritTIrP6rAg1J+tS6H4S0aZrUdVji/7hkrB3+6CQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1755223526; x=
 1755309926; bh=nsVOmspME9O+t8vj6HrlrcesarieFdua4vvDy3VQTiE=; b=S
 QgHu6lg/GVnxHri2e75Ehl5jpWoNezu9VIoTdQzplWb1JAaom2XNVa8TyAXn2jG1
 IJ9SsJpV97tZV9LyCxh3HcZwzI1YmkCBvXX9Z1W4VSO+8nQ0yqhkp5QAf+fIDe32
 gQpG47FDF6QiNv6dVKF+wvloxaQAJ/ix91LTWmXJijL5sNrD+hNcwtEwVxBr92Kh
 n3Mk3yKHZ22ydZcp0eO6aqGm3TgL4knpVUKPr6t7YhwajjHuqromAcP+PlsaExVC
 pd5pQaZFTYN93sq1O+E/dm4TSuQELFYFrwNzp1+QykGhBv6DKr3Y8R6siRBAQnYu
 LGS1QazFSXDZkeEQU6dfA==
X-ME-Sender: <xms:5ZWeaMS6i8wKrxunwh7UrYBXukKNK02tHPeHwAzL28EZ1HKEtUe1NQ>
 <xme:5ZWeaHvlMxzvEnqmse-mm-qR6shcnDjjyNxyu6rAyGDvUVQPAHFi-SwD_9CeITSC9
 Twq4_nV3pJGBGggrvY>
X-ME-Received: <xmr:5ZWeaMJ4GtE0Zwz3PR1Nqt-XpwCVFJKwZ0qBBQ8O8i__RQs1XcFYV5JvqIfUl5ybB1awkcKV5k7oj756nu9B7MlcBkOwJ9MNITU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddugedvjedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohephedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtohepvggumhhunhgurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtph
 htthhopegrphgrihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhm
X-ME-Proxy: <xmx:5ZWeaEkRX6hFQYVtpZXWPbeVvdci4d0abX7ZdI7DyIT6BnHrCMVzCA>
 <xmx:5ZWeaNJhOztuc1mCBBDKZwwN_xsAIm8EQ4gVwRMPclFIhIwZrUW3Fg>
 <xmx:5ZWeaJ4hOULOioiS4JeSubP50WKadpsW1GmLJouQH952q_UeHA0L3w>
 <xmx:5ZWeaB1jXxem6_gdIJBl2bpGaWjmZtx2bPvJUWs9GbSOgZ3q-HqUHw>
 <xmx:5pWeaBhNAisNtJyo9_3UsJ6c7-W3j8AliqQ7nIP23lcQwVSbKVSbKdfu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 14 Aug 2025 22:05:24 -0400 (EDT)
Date: Fri, 15 Aug 2025 11:05:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.17-rc1 kernel
Message-ID: <20250815020521.GA349651@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 edmund.raile@protonmail.com, apais@linux.microsoft.com
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 Please accept the following changes from the subsystem.
 The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:
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
X-Headers-End: 1umjp2-0007Se-SK
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
Cc: linux1394-devel@lists.sourceforge.net, apais@linux.microsoft.com,
 linux-kernel@vger.kernel.org, edmund.raile@protonmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please accept the following changes from the subsystem.


The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:

  Linux 6.17-rc1 (2025-08-10 19:41:16 +0300)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.17-rc1

for you to fetch changes up to 0342273e14c25971f2916de2b598db2e9cfeec15:

  firewire: core: reallocate buffer for FCP address handlers when more than 4 are registered (2025-08-03 21:20:15 +0900)

----------------------------------------------------------------
firewire fixes for v6.17-rc1

This set of fixes includes a solution for the issue described in the tag
annotation for v6.17 updates.

The issue involved a potential call to schedule() within an RCU read-side
critical section. The solution applies reference counting to ensure that
handlers which may call schedule() are invoked safely outside of the
critical section.

----------------------------------------------------------------
Takashi Sakamoto (4):
      firewire: core: use reference counting to invoke address handlers safely
      firewire: core: call handler for exclusive regions outside RCU read-side critical section
      firewire: core: call FCP address handlers outside RCU read-side critical section
      firewire: core: reallocate buffer for FCP address handlers when more than 4 are registered

 drivers/firewire/core-transaction.c | 91 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------
 include/linux/firewire.h            |  4 ++++
 2 files changed, 85 insertions(+), 10 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
