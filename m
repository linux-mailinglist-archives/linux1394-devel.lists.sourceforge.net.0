Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1332EA063
	for <lists+linux1394-devel@lfdr.de>; Tue,  5 Jan 2021 00:07:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kwYwp-0006VB-Ac; Mon, 04 Jan 2021 23:07:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1kwYwo-0006V4-7c
 for linux1394-devel@lists.sourceforge.net; Mon, 04 Jan 2021 23:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n8tr27oJwNvrseD+YA1kYrXn5YLgUpg+bqfZxxtozX8=; b=GaKGj3vvf52wMrZHVekrfV7NCU
 Re960VM/KmoGVyfpxiRhQlr5QwzBtXYr5eD/mtMGq87bGETK4EUdP7YSVvCr0aFwvIVVbTHTS2spm
 bQzGJ7ig+33zqztHE0jyrYkrzdcjSUO3FAhu105aJ4ugsxpJmOVIlpibCb64HOJ7F+DA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n8tr27oJwNvrseD+YA1kYrXn5YLgUpg+bqfZxxtozX8=; b=eiLD8Ep44aes4rOqfKHupxgnXr
 M9iR5v0ZRvLma1e1xx0wvlJITbb0MLHV1MjPu1RMaMR+R0FtOdyFQBVj6UY49Rcqnk6CF2AIxgijb
 O7X45T/BwNxm5L8HbqRnH1BpwF68YiNetQlsn4pO8iuERbWHPD5iUBHnI4E3QcWKGIfU=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kwYwd-00DXWm-Cm
 for linux1394-devel@lists.sourceforge.net; Mon, 04 Jan 2021 23:07:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 8F2BB282AD;
 Mon,  4 Jan 2021 17:50:15 -0500 (EST)
Date: Tue, 5 Jan 2021 09:50:14 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <e3b5ce6a-0152-01b8-89d2-80bcdb9c1c57@acm.org>
Message-ID: <alpine.LNX.2.23.453.2101050840010.6@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
 <alpine.LNX.2.22.394.2006171104540.11@nippy.intranet>
 <e3b5ce6a-0152-01b8-89d2-80bcdb9c1c57@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kwYwd-00DXWm-Cm
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, Chris Boot <bootc@boo.tc>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, 4 Jan 2021, Bart Van Assche wrote:

> On 6/16/20 7:07 PM, Finn Thain wrote:
> > On Tue, 16 Jun 2020, Bart Van Assche wrote:
> >> As far as I know the sbp driver only has had one user ever and that 
> >> user is no longer user the sbp driver.
> > 
> > So, you estimate the userbase at zero. Can you give a confidence 
> > level? Actual measurement is hard because when end users encounter 
> > breakage, they look for quick workarounds before they undertake post 
> > mortem, log collection, bug reporting, mailing list discussions, 
> > analysis etc.
> 
> (replying to an e-mail from six months ago)
> 
> Hi Finn,
> 
> I am confident that my estimate is an accurate estimate since I have not 
> seen any sbp support requests, sbp bug reports nor any sbp bug fixes 
> since the sbp target driver has been accepted upstream.
> 

That suggests to me that the code that you're hoping to remove 1) has no 
bugs, or 2) has no reported bugs, or 3) has no users at present.

I am confident that your evidence does not support your conclusion (i.e. 
the code will never be used again).

Sometimes, users only appear after the unreported bugs get fixed. I've 
seen it happen.

> > Here's a different question: "Why remove it from the kernel tree?"
> > 
> > If maintaining this code is a burden, is it not the kind of tax that 
> > all developers/users pay to all developers/users? Does this driver 
> > impose an unreasonably high burden for some reason?
> 
> Yes. If anyone wants to change the interface between SCSI target core 
> and SCSI target drivers, all target drivers, including the sbp and FCoE 
> target driver have to be retested.

I'm unaware of such an obligation. API changes happen often. When they do, 
we see good test coverage of commercially viable hardware, some 
best-effort testing of common hardware, and some perfunctory build 
testing.

But that is missing the point, which was about a particular driver, not 
about development process. You have not shown how the target API is 
special, to support your claim that this driver imposes an unreasonable 
burden.

In the interests of making forward progress in this discussion, shall we 
discuss the kind of SCSI Target API changes that you anticipate?

> In other words, keeping unused target drivers inside the kernel tree 
> involves a significant maintenance burden for anyone who wants to modify 
> the interface between the SCSI target core and SCSI target drivers.
> 

Keeping _any_ driver in the kernel involves a maintenance burden. There 
are two good ways to address that.

Firstly, by improving the development process. For example, an API change 
is mostly mechanical work that lends itself to automated refactoring.
Secondly, by involving all interested parties, so that the burden is 
shared.

Of course, there are other ways. E.g. "don't ship code when doing so won't 
turn a profit". That, by the way, was the policy that gave us 10 billion 
Android devices (or more) that don't function with a mainline kernel.

> Additionally, there is a good alternative available for the sbp driver. 
> Every system I know of that is equipped with a Firewire port also has an 
> Ethernet port. So users who want to provide SCSI target functionality on 
> such systems can use any SCSI transport protocol that is compatible with 
> Ethernet (iSCSI, iSER over soft-RoCE, SRP over soft-RoCE, ...).
> 

Ethernet is not always an alternative. That was already discussed in this 
thread. But let's assume for a moment that you can migrate any and all 
users of this driver over to an ethernet driver.

Why would the maintainers of that ethernet driver and its API accept that 
plan, if adding users would extend their maintenance and testing 
obligations? Do you think those maintainers should pay the "kind of tax 
that all developers/users pay to all developers/users?"

> Thanks,
> 
> Bart.
> 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
