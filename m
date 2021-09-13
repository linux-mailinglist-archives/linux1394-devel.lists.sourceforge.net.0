Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C21408D35
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Sep 2021 15:23:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPlvY-0004X1-3y; Mon, 13 Sep 2021 13:23:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+huawei@kernel.org>) id 1mPlvW-0004Wu-RO
 for linux1394-devel@lists.sourceforge.net; Mon, 13 Sep 2021 13:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RkqXpb3RJN11m7x2hjohcUYdPDUswBTRAwkkDmJtxWc=; b=KBaIxNVkIlygIhOUSXuKRi4ZzY
 JrX6PFhxRrvIbAptHIGbXegs/goMYHUzc0apfYj/UW2ZFl1AQfQoYsoNmHp9pf9NM3y3Y/7KAvyjx
 knEGOBPTcRnUHaycY28rBuqc5pIQpUZmvJphT9GUeQxVOiQFu8bvSSDcSgy83sxfQhSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RkqXpb3RJN11m7x2hjohcUYdPDUswBTRAwkkDmJtxWc=; b=Du7I89vrpuGRQI+5XPhlPSr2jW
 uuj1nG9VWDpa9Ny1ZB8/F63+ApKTYNBC72CB5UWcrsVBLEBDX68RBAkv8ShHurwYy9kcVYBUzlLmB
 //XgWzhqCZniNa6cp88nzXyKLATnxC0OMRLrnb7ZRjoKs1IgR5rLEhT9sqHIpoPoVdNA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPlvW-0000wS-5m
 for linux1394-devel@lists.sourceforge.net; Mon, 13 Sep 2021 13:23:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 961EB61251;
 Mon, 13 Sep 2021 13:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631539387;
 bh=0GBD29h7Rxj8HKWi9tSrb3Jx9r9Q9O70ZgEuvKuXwa0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jR4SWzfQM+dKAWTuApLA3POa+pCpJ3wdhTlIXTnBHFiTsdWpmawkLr0Vq5bLFXbWL
 RS9j4FVqUD5BokQpPyPJxQRcQpdHhnDZhKY8zjHsEJjkCNdxprK/k40oQLqAF1UnmV
 r/CmbpyS9ztddIaoMHWrMyz3q7B15Ma2y/kxzAOCTkVP0I1gRC5XPi+Q8vA7wE9Hvr
 Mp4+cvUgVKOOOZ2msOIeD+CppGEf5EgkUVh1wcRJjc/I7B5xToHvcSuWKEt7Cy3Bj8
 zkvj566KT4WsSeloaMJoA4Qjl5sb5tujuSOLoUE0nMeF+qkehs5gpp/DxIW//E2mGs
 YvkuK9SQEw90g==
Date: Mon, 13 Sep 2021 15:23:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [PATCH v2 RESEND] media: firewire: firedtv-avc: fix a buffer
 overflow in avc_ca_pmt()
Message-ID: <20210913152302.76d57784@coco.lan>
In-Reply-To: <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
References: <YRoNTX3Krtw9NdkI@eldamar.lan> <20210816072721.GA10534@kili>
 <20210901104026.GB2129@kadam> <YT39LBTgGL/b/V5N@eldamar.lan>
 <CAHk-=wjOW3Fx8td1Snezd1_9sf8q7KuQx8TyQNR0ypS2rVBHtg@mail.gmail.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Em Sun,
 12 Sep 2021 11:26:10 -0700 Linus Torvalds <torvalds@linuxfoundation.org>
 escreveu: > On Sun, Sep 12,
 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org>
 wrote: > > > > On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:
 > > > On Mon, Aug 16, 2021 at 10:27:22AM +0300, [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mPlvW-0000wS-5m
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
Cc: Yang Yanchao <yangyanchao6@huawei.com>,
 Security Officers <security@kernel.org>, linux1394-devel@lists.sourceforge.net,
 Salvatore Bonaccorso <carnil@debian.org>, linux-distros@vs.openwall.org,
 Luo Likang <luolikang@nsfocus.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Em Sun, 12 Sep 2021 11:26:10 -0700
Linus Torvalds <torvalds@linuxfoundation.org> escreveu:

> On Sun, Sep 12, 2021 at 6:14 AM Salvatore Bonaccorso <carnil@debian.org> wrote:
> >
> > On Wed, Sep 01, 2021 at 01:40:26PM +0300, Dan Carpenter wrote:  
> > > On Mon, Aug 16, 2021 at 10:27:22AM +0300, Dan Carpenter wrote:  
> > > > The bounds checking in avc_ca_pmt() is not strict enough.  It should
> > > > be checking "read_pos + 4" because it's reading 5 bytes.  If the
> > > > "es_info_length" is non-zero then it reads a 6th byte so there needs to
> > > > be an additional check for that.
> > > >
> > > > I also added checks for the "write_pos".  I don't think these are
> > > > required because "read_pos" and "write_pos" are tied together so
> > > > checking one ought to be enough.  
> 
> They may be in sync at a fixed offset, but the buffer length of the
> read ("int length") is not in sync with the buffer length for the
> write ("sizeof(c->operand)").
> 
> So I do think the write pos limit checking is actually necessary and needed.
> 
> > > > RESEND: this patch got lost somehow.  
> > >
> > > What the heck?  Someone on patchwork just marked this patch as obsolete
> > > again!!!  
> 
> Can we please make sure patchwork has some logging so that that kind
> of thing shows _who_ did this?

I've been wanting a feature like that on patchwork for years. Basically,
when there's more then a single person capable of accessing a patchwork
instance, there's no way to log who changed the status, nor to control who
can delegate a patch to someone else or not.

At least for me, touching patchwork is very hard, as the the entire login
logic, as well as the database model itself, is abstracted by Django. So,
I can't simply change a SQL insert clause there to add something else to
their logs nor to change the sent email that it is pushed when a patch
status changed.

I ended adding an internal log to indicate when I do some changes on my
patchwork instance via script a couple of years ago.

> > Someone knows what is going on here, i.e. what is the problem?  
> 
> Dan, can you just send that fix to me directly, with the fixed commit
> message (see above), and we can close this.

Feel free to add my:

	Acked-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> 
> That still leaves the "who closes things on patchwork" question, but
> that's something I can't do anything about.

I'll double-check my scripts in order to identify if this came from
my side, and if so, fix them.

Thanks,
Mauro


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
