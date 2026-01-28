Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uChJNaiWemku8QEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Thu, 29 Jan 2026 00:07:20 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2754EA9D6B
	for <lists+linux1394-devel@lfdr.de>; Thu, 29 Jan 2026 00:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fbUzGdkL/6oyl+t/usKixn++NnEwX+IFyuTDpLaua0k=; b=gE5/id5KBpTCUFSkfZphqyMdBY
	Ojd21Fl7MBVDKH25orn8RcvYfV2/dyS6HIlQ9DzJvTXLLbGa5/SUzMSfKPGFDF4V1l3E35UdDiB/b
	TWSzkEcxAqaU4VZgwFn60q8qxelI7r8SHYtg8IP7tv4L5FeDaJbZs5AeUrNpX2uGwA54=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vlEct-0001fX-2E;
	Wed, 28 Jan 2026 23:07:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vlEcr-0001fM-4B
 for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Jan 2026 23:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BARlwKtVzPK1d9frwpszb3CDTNlJmznk2d23dUtnIeM=; b=IYHXfyNZwsGwtJOkhNd7k0w2Oc
 lgcCZD90WkOq3Ja9BhDak3cCXfsQBPJSyMmuMiB7ELdfxgNj+IYNU+/XVL64WAfC8+cJJwgM6/bML
 87yZSuJFAZ9rqACjZerHk8DfUe1I9C9U0fpYNKqpwRyJ29tA8FpT7AU7aczCJZnaAwAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BARlwKtVzPK1d9frwpszb3CDTNlJmznk2d23dUtnIeM=; b=l9J74Di+5MOaGRdzdPK2kTs0jF
 2xMbqMrv1lyyErrn/2g/MI23o4wtJXT7fGVnNdEEWIM9w2daF7tWTH1fafX/jUo6UDpFtBBgluswy
 KwXgpXRHLoGtyJKhQtQ6tK7Y9dhEB93DtE4Hh49YfF4XbpJ1tmhn76sF+51QnthlNWrw=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vlEcq-0007bc-6t for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Jan 2026 23:07:05 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 5C2991D0008F;
 Wed, 28 Jan 2026 18:06:53 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Wed, 28 Jan 2026 18:06:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1769641613; x=
 1769728013; bh=BARlwKtVzPK1d9frwpszb3CDTNlJmznk2d23dUtnIeM=; b=a
 CpZZ719txoBnwDm0ihtcQR/jJQ/T4PF2TIVvuL9ozth6YLaJhbYYjq2P+dZWt6Ko
 mvYOcDlj0HCSGkN4lLNmDMqGlObAvjx0/uTc3EkuR4szDTGF6u+h8lG9KV2J9A5/
 S+VkAbkHoMyFpBsmPvU8OlyzkGuWzGiQS8cQgP27dHNeVz//Y5bABidTKWUpKEeF
 hoKZy++BLDI2TwBhb8BbXpczzXVdvn+wa3BLlf0bbCbRIQoPLYU9gfBEaA7vwyrB
 8iGsFWc24FPGM+N3TrETE/eld1fuVP3N7ySj/nDrLPPwZJ0TxndKzGwSVY4hFDqp
 AMD43O4FsCUEViWnCiSpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1769641613; x=1769728013; bh=BARlwKtVzPK1d9frwpszb3CDTNlJmznk2d2
 3dUtnIeM=; b=RWmNXUQaIaTZeG0JHI1SeyPMfeETquCI4GuAhc93jpglGMQ9sMt
 TvSqrvn1BWFy4/LF10HeASWLFB+JMJY09Kkb3jOqSDBxMKxAr+/0SvEgs0lsIOEY
 IzqLa78r3wAlHbP9ciRNBdpkJbfnJ3JcueOqB/pway3DzIB0ciSsLrIKcG1QUo42
 peD/tm+fLWeohiCRIwElTT3/3ETVpepHTqfytFkPJjLP339jrDil79hTI3fNdN0l
 YkZrQhBcbBt5WhJpZ1RjEUExGVtdhm96KvkML1Kq2t9IjXDqMcDicjcoWZ9nth0W
 PUjCIOpT7v3KL6ExUbvi6P/NzL2thVNAVqQ==
X-ME-Sender: <xms:jJZ6aVzhKS2wPq3LC2iP_8mJjqASf6HpGP1GzMpSshAX7qE_KRxNuA>
 <xme:jJZ6aQvqs7J4TtOawlha76lQvEx_VX9qMqfNZSCIo5I7kJaIf0mWlAYWeuMbeJbgs
 dvOnHYEPdE6SBdZvaPLL1rmAiTIixgPbgfkL6FAk1ICeMpQH8OrmQ>
X-ME-Received: <xmr:jJZ6aS2c746RrKIUHv764KN9pq_LGxHxcH_kg6WFaBvkeyPLq1Bko0EF0teYu4KnNCqg9cpuOJNM7Cv-OIHqpDMm35dnx7mMkL8a>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduieegheelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepudehgeeuveetuedvkeekvdfgffelieeivdelhfettedt
 veettefgffegjeefleeknecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepshhmth
 hpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhs
 ohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheprghnughrvggrshhpheeisehouh
 htlhhoohhkrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhtrggslhgvsehvghgvrhdrkhgvrhhnvg
 hlrdhorhhg
X-ME-Proxy: <xmx:jJZ6ab_T_jxrh2i-7uxWoak46ZsrcEC4PVQxsOjzAVGgU86QeYpEkw>
 <xmx:jJZ6aTNV5GPJ9epF9Q8zOyg_JB6QxoQjpHOK2cftFvNbhKwZ3GxOYQ>
 <xmx:jJZ6afdCaffGtU6gW-dlzJ62f-Jn6ioR8p6yDVOLQ-QyYi8k0_z0LQ>
 <xmx:jJZ6aSUqxQwQyO0crPi1ruiBzMRtpBES4QapaLrmxCL_kVGlR_I8Vg>
 <xmx:jZZ6aevJjcKUNKTtCQ3rQSnCQJOujnkw23gbrtTGx6CfgrOTYhFYqhM->
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Jan 2026 18:06:51 -0500 (EST)
Date: Thu, 29 Jan 2026 08:06:49 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix race condition against transaction
 list
Message-ID: <20260128230649.GA68719@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 Andreas Persson <andreasp56@outlook.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260127223413.22265-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127223413.22265-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 28, 2026 at 07:34:13AM +0900, Takashi Sakamoto
 wrote: > The list of transaction is enumerated without acquiring card lock
 when > processing AR response event. This causes a race condition [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vlEcq-0007bc-6t
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
Cc: Andreas Persson <andreasp56@outlook.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[outlook.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[linux1394-devel];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 2754EA9D6B
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:34:13AM +0900, Takashi Sakamoto wrote:
> The list of transaction is enumerated without acquiring card lock when
> processing AR response event. This causes a race condition bug when
> processing AT request completion event concurrently.
> 
> This commit fixes the bug by put timer start for split transaction
> expiration into the scope of lock. The value of jiffies in card structure
> is referred before acquiring the lock.
> 
> Cc: stable@vger.kernel.org # v6.18
> Fixes: b5725cfa4120 ("firewire: core: use spin lock specific to timer for split transaction")
> Reported-by: Andreas Persson <andreasp56@outlook.com>
> Closes: https://github.com/alsa-project/snd-firewire-ctl-services/issues/209
> Tested-by: Andreas Persson <andreasp56@outlook.com>
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-transaction.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)

Applied to for-linus branch. I'll send it to mainline in this weekend in
time for v6.19-rc8 release.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
