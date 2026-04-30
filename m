Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGGUKL1T82mLzgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Apr 2026 15:06:05 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 508664A327B
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Apr 2026 15:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8diZ8rKBbaVycgcIvCgk6RVYcTL/TxxfdJenMgIzdw=; b=mDGebVDOru/4gol4B7MGFL6fz9
	5IS+0Z3aEHel2Z6SrO+b+rsiNS4kJgyD42sfNMKkakVnQliShZUWaiLE+oZs81xicJOuUKUX7g9fr
	cpSjnrkEEAXS8Ej8vA6r1UnDNzc51Urqcf2rwk0XB4c5J26nwBbjCD8LzPkYCWAL2Zrw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIR5S-00086a-QP;
	Thu, 30 Apr 2026 13:05:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIR5Q-00086Q-2f
 for linux1394-devel@lists.sourceforge.net;
 Thu, 30 Apr 2026 13:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qnZOVwdaHf6Hq2E9WA3COz1vUi3c6hywsKGXVIomORM=; b=ID+pOhHE/qQ6gjWK2Y0uhAFt33
 ynS7NF2sKnVxOuAfsd0OwAQfRU7Y3iko02CluDVPBJLzV08nOTvRrR1lDM/m4XEOQ5JxUKzcSe7n3
 6sYnhzmFHouuRTDLAWlWxZ5T2BiFpFfiRA9+tvYnMXibeaLPQCWmpGW99l5uZw/YbE3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qnZOVwdaHf6Hq2E9WA3COz1vUi3c6hywsKGXVIomORM=; b=Gl6QShbQVaXPYGkb3t6jBd3ciQ
 A3zNjZRZSiInmrSAZ0rRNosSEHCdTJ9UWbb3ay4a0S8MwfkD51R4ZROqrpb3GdzrCWCJUyF+tmaIy
 0pN9q3qZeXRs/2F4GC5KRjBqvzQA1naPnXZ/BnJRBVUSRb3JK4kLqZcvYDCQ2RYFL/eI=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIR5O-0005Fr-5x for linux1394-devel@lists.sourceforge.net;
 Thu, 30 Apr 2026 13:05:48 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 542271D0009E;
 Thu, 30 Apr 2026 09:05:35 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Thu, 30 Apr 2026 09:05:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777554335; x=
 1777640735; bh=qnZOVwdaHf6Hq2E9WA3COz1vUi3c6hywsKGXVIomORM=; b=0
 ZvDutzOQd7NHP8yBGqqVyvMcIlCwYFd/9x7mVAuDPcdz7GmxBqu4PtDteiTEUTAc
 eAB6fJ7HHCDGgaq3h210SYeVJMxpd2w8rTHcGTfOl35BpPnBLHlUlqN+Wq429k+m
 dg7oDZgbrn4sBDcLE4NKOBZcrKdksdjD+jsPVyUejoKD+9O/JlaWk0GpCdPUiR4o
 5yGgohqEG2wa+gWoiskoK67Y81E44hJjN8hYb8s9K1v+mw0FSgHSfzma/nuCcoSe
 HaJw9UrDHKdUAUYQYWgMazMG/GSts48+tNkNS+MbTsTA/7KlhY/zEtwY78+gIbqC
 lSAAPVTKPQZE/l1ok9z/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1777554335; x=1777640735; bh=qnZOVwdaHf6Hq2E9WA3COz1vUi3c6hywsKG
 XVIomORM=; b=gArMRAXhpKgiy+N/OpIHUn/mW3QkakBHoXSPruQOrcNP/FbynBq
 AqouX3fUjpcRJ/ZTJ/AzNK6NirQ9+Fdp+Suwk2QnX3tGWHDYBvf1DbvxMZ/6rdLz
 Vy2oLmq++Z+/7l+5ug6SEE8iHz+dliMZjEMEoB/poJEsjzILY+HDG/9j9PAECeER
 F21h6nmjKgCLkuPzy2HJ86Rd9y7QdBe6IjO9wjl8vdW3nvCqskdvNCDvX3MxU7ZK
 g5xO6J5QIAaPjrnN5r/ZleoM6jmJ8kGGqQPRxv0c27NBDKm/BxNiAwbcvTJG9KiY
 L1QMhxLLc+mL+DvMQX7MZeIHhE63havsG0w==
X-ME-Sender: <xms:nlPzaS-b5gBcGVtERPEcMrVqJ4N2TfPoDhcdUvEyZgdVhbuJ-0LZPg>
 <xme:nlPzaQhbEDz_znj4t8U9anG66gsWvR_YnAQd6_GlXlXlWicptFRi7jLdDB8l5nUPG
 p6Zbvonlh1T6TGvqDbKukEGfehUSIUKssMal8bjXmBOemoHVWwson4>
X-ME-Received: <xmr:nlPzaScoYc2YNm2qIKZnUNqgW2ze1giY6D5sfsdLRytB9Env_DP6xokFmKxLbxOhGPuXcUOTwNki18ZF0FDo71wjPdLA3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekjeeflecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecuogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjug
 hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeejhffhgeeutefhfeeugfeggeduhfekffduhffhheekhfdt
 veefhfejjefftdfgjeenucffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvg
 epshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepughinhhgihhsohdrkh
 gvrhhnvghlsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghl
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhhuhgrnhhgphgvnhhgrd
 hkvghrnhgvlhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:nlPzaXpw--B4xAUTNwOU1NA0QJlzIsFhSn2Tgx8Kq20RONd97frjww>
 <xmx:nlPzaXCTf7ZN2mZpSz02ElVHGru-cKx9RbViG6iScj6FyFkoEP3S3Q>
 <xmx:nlPzaUZNNXnp6jrNwk4OCWybruqbrHJZ8-mrTUIFIBSohMMMdhJgBQ>
 <xmx:nlPzaa5duRJFLPgnq3d5lJZswUk-3vsNmVdoByOzdqVLdwDHPciDwA>
 <xmx:n1PzaVDzUtKmpjjmALqxTRkQsgBCh99AFGNyGCo4y_VEjpE-CJxbxWgd>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Apr 2026 09:05:33 -0400 (EDT)
Date: Thu, 30 Apr 2026 22:05:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/7] firewire: core: separate iso_resource paths
Message-ID: <20260430130530.GA209193@sakamocchi.jp>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 dingiso.kernel@gmail.com, linux-kernel@vger.kernel.org,
 shuangpeng.kernel@gmail.com
References: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 29, 2026 at 06:34:41PM +0900, Takashi Sakamoto
 wrote: > Hi, > > (Repost since lkml was excluded.) > > Dingisoul has reported
 that a case where the reference count of a > client structure i [...] 
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
X-Headers-End: 1wIR5O-0005Fr-5x
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
Cc: shuangpeng.kernel@gmail.com, linux-kernel@vger.kernel.org,
 dingiso.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 508664A327B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

On Wed, Apr 29, 2026 at 06:34:41PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> (Repost since lkml was excluded.)
> 
> Dingisoul has reported that a case where the reference count of a
> client structure is leaked when handling iso_resource in cdev layer[1].
> Fixing the bug immediately s difficult due to the complexity of
> per-client resource lifetime.
> 
> As a first step toward addressing this issue, this patchset refactors the
> existing code for isochronous resource operation. Userspace application
> can allocate and deallocate isochronous resources on IEEE 1394 bus in two
> ways:
>  * FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE
>  * FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE_ONCE
> 
> With the former, the application delegates the maintenance of the
> allocated isochronous resources to kernel and obtain a handle for the
> client resource. With the latter, the application should maintain
> isochronous resources every time receiving bus reset event, without
> relying on a handle.
> 
> Currently, both  operations are handled by the same code, although they
> differ in terms of client resource management.
> 
> This patchset separates these two paths. As a result, it becomes clear
> that the reported issue only affects client resource allocated via the
> former method. While the actual bug fix is deferred, this refactoring
> lays the groundwork for it.
> 
> [1] https://sourceforge.net/p/linux1394/mailman/linux1394-devel/thread/20260404110936.GA282614%40sakamocchi.jp/#msg59317811
> 
> Takashi Sakamoto (7):
>   firewire: core: code refactoring for early return at client resource
>     allocation
>   firewire: core: code refactoring to queue work item for iso_resource
>   firewire: core: code refactoring for helper function to fill
>     iso_resource parameters
>   firewire: core: split functions for iso_resource once operation
>   firewire: core: code cleanup to remove old implementations for once
>     operation
>   firewire: core: append _auto suffix for non-once iso resource
>     operations
>   firewire: core: code cleanup for iso resource auto creation
> 
>  drivers/firewire/core-cdev.c | 285 +++++++++++++++++++++--------------
>  1 file changed, 176 insertions(+), 109 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
