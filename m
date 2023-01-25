Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D267B258
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:08:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeZV-0005Ht-9K;
	Wed, 25 Jan 2023 12:08:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeZT-0005Hd-VT
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFNe9qYghXCug/YdqS/utMFk4bq0M24IOJ8OklWGuG8=; b=ZO/xOradzaUEm7oYUZcgbtnOmG
 Idvbz3qCuDeSgMcYYuH9ilHNScGrWB3dKKhX5o4VO1xFt3hC38a66Iczq8VbXcSEZA3Nj9z/9OYbw
 q7V1HrQVcpFAzgRQadyUcyPcjwTzFR4xJxtpZxhH8JKd+yal25xXm9/HF8eI763v68YI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFNe9qYghXCug/YdqS/utMFk4bq0M24IOJ8OklWGuG8=; b=JokEdTpKjWqLvxOaCtdsztqrbh
 SS8iYHmjefZwMhScluoLfiEHSZxUVzgxIIyW5RtuOhiJ55Q/06c4XXeGd1DaXKKD1DMBjGzq50cA0
 Q/6HuWRI9yJ0bPXYw2nl5da+fldT8ztl0ZH6ToHfXZ6Yj/bIOiqp2uk6D8BcDbq+oBpA=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeZR-0008GW-7Z for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:08:07 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 97B6A5C0176;
 Wed, 25 Jan 2023 07:07:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 25 Jan 2023 07:07:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1674648479; x=1674734879; bh=DF
 Ne9qYghXCug/YdqS/utMFk4bq0M24IOJ8OklWGuG8=; b=jrhR6Yg0brTuTCvdcJ
 F7v0psCXcOqVU1GBBdLGMR9oOEobP2kENS7BHME5pAiitRdUow68419BKzeSLfK3
 SUuD7BDuGVcy6Hg2hxOxhXVfDYXa/Arix3I0d89UP25DtRHpK24Y70wAtDpfFOZ+
 r1kZhoMk/2Ck6ggersrkyCrk9Qomd5gopztUek8hHSyF0zsITUvCIl2861fFOx2X
 reuoDTi1vzFZmomffGcYFE/e0ChskLB3jv9u0fgRVRDWw1hsZ5tca6rFsGOaCrAW
 +fGPmmfJB5NzHHfgfBg7Q+1tHcZC20inWNAJM21guYbqpIgV3L0IorsR/iPcxngp
 UXbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1674648479; x=1674734879; bh=DFNe9qYghXCug/YdqS/utMFk4bq0
 M24IOJ8OklWGuG8=; b=Nh5CSV4qyllDh0XwusdKRvHn+YQ79vFCYShS/UPZ3CcJ
 mXmfuYzswj+in+Zve01+xkMg7joX+xw2V7a8ERFcg9gR1L58eN3+qm++TYFpxvLn
 oDnbQ/Jn+jaAAKXVYBJwEA/pzHlN1ZfwMZb/aK077j7qJ3o7bnqb5qz21wXavgGH
 TavNmMl9y8RD4tKxB/2nFf4lOAvnOf1QDtjwod3YcqpBTInyBxANBsksyXpapMwf
 d1kTDciS48wwBhWLmGaGq9rj12mr7iOEWVLpAbmaZ+vi8TRm2eKQ1WW16tzdYVtk
 iIaKo8DhhUT7Tn9c1YSNKki44U5QH6NvecuLWgX3rw==
X-ME-Sender: <xms:nxvRY-rcUyX_BiD3uRcBpIMHwSMffzEsvNPvIq2Rl_56br6mpnum2A>
 <xme:nxvRY8pn3RhiwgUrDnK64lPIa379hkArHhLAeVl2bji6hHIS23XiPgXNuxFXIsF7T
 GGueZbOv2Ft4jI_z24>
X-ME-Received: <xmr:nxvRYzMFHVOBSPeql0FfMeReTTNhMhGlvbWOp7lw72jfGB35_Nzui16Xjywt8bnACVihTLG3BNjvJdgEp5u6X8EcY7Aov-NHzn6X>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:nxvRY9507r_LbQ3YVXioK4Upgm-h-AjOasZ1mtoC365C9sc74HCKiQ>
 <xmx:nxvRY976cnIVSPwQgx3BBNlZPYHIr-mm0-hvqrxklrVJj4lcv15mRw>
 <xmx:nxvRY9jg5lFDXM7rp8iGq6WeY9Kf3bP5mAuPn9J42XhE1VVXuJvqcA>
 <xmx:nxvRY3mJSYEYdGSmFvXGgbvF9xRDuYDjcdNBLDWCdXJXCWxcsJ-qfA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:07:57 -0500 (EST)
Date: Wed, 25 Jan 2023 21:07:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH 0/3] firewire: use single object for user space listeners
 to dispatch request to IEC 61883-1 FCP region
Message-ID: <Y9Ebm7Yw9XT06Hx6@workstation>
Mail-Followup-To: Takashi Iwai <tiwai@suse.de>, stefanr@s5r6.in-berlin.de,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org
References: <20230120090344.296451-1-o-takashi@sakamocchi.jp>
 <873581r76s.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <873581r76s.wl-tiwai@suse.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jan 23, 2023 at 09:22:51AM +0100, Takashi Iwai
 wrote: > On Fri, 20 Jan 2023 10:03:41 +0100, > Takashi Sakamoto wrote: >
 > > > Hi, > > > > This patch solves long standing issue mentioned by cod [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
X-Headers-End: 1pKeZR-0008GW-7Z
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Jan 23, 2023 at 09:22:51AM +0100, Takashi Iwai wrote:
> On Fri, 20 Jan 2023 10:03:41 +0100,
> Takashi Sakamoto wrote:
> > 
> > Hi,
> > 
> > This patch solves long standing issue mentioned by code comment[1] and a
> > commit 281e20323ab7 ("firewire: core: fix use-after-free regression in FCP
> > handler")[2]. This patchset is based on the kernel tree to which another
> > fix is applied[3].
> > 
> > To Iwai-san, I would like to ask you picking them to your local
> > tree, then send them to mainline tree as well as sound patches when
> > the merge window is open for v6.3 kernel, unless any question and
> > objection is posted. (Additionally, I have prepared the other patchset for
> > the subsystem.)
> 
> As those are spontaneous small fixes, now I merged all three patches
> on topic/firewire branch (on top of the for-linus including your
> previous FireWire core fix), merged back to for-next branch for 6.3.

Thanks for your applying.

> But, I have no will to keep doing this in a long term.  I suppose the
> best would be that you'd step up as a maintainer for FireWire
> stack...

Indeed. The next patchset is beyond your courtesy. I posted it to LKML
with my concern. I'm pleased if you follow to it.

* https://lore.kernel.org/lkml/20230125120301.51585-1-o-takashi@sakamocchi.jp/

> thanks,
> 
> Takashi


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
