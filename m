Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA71FACF6
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Jun 2020 11:42:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jl87B-0000RK-FO; Tue, 16 Jun 2020 09:42:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jl879-0000Qv-Hc
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 09:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rcjLxO0plw0scMKgqeDav9IHH8ezF7iZ6QA1ujNw3Zo=; b=ThBxzpJq47TNivM/tuL/qO1hws
 9mmZtp/Jm3lU2HoiSFwZsgdwJT56EVNpebk+QrwJbrBABTsxoYscfetITwNlq/CiQJJwp0knlBdBB
 Qmm3ROHUUW37tAXPJyIG1XE16rMl8O9MYOkZEhgvj4kOXbcXem9mjFWcRO2rCzYqDUgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rcjLxO0plw0scMKgqeDav9IHH8ezF7iZ6QA1ujNw3Zo=; b=UqFHJlJnlD+1n7nWsZCfi3fbSd
 KA6mEHyngoelpYk9FTPVX9UHTPS9ye3VEhna9VWv1Apvt+ju81TYpfwSZyAFvIn1a9nD/BowHZByA
 845mWPJg19ZvjiElvhgrNeEhaa9MpENlZUYaF1EZtOf97q0gerbZDP5BwHqoBi5uN9QI=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jl877-00536e-HL
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 09:42:43 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id DC1CE274AC;
 Tue, 16 Jun 2020 05:42:21 -0400 (EDT)
Date: Tue, 16 Jun 2020 19:42:23 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Chris Boot <bootc@boo.tc>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
Message-ID: <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jl877-00536e-HL
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
Cc: Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Nicholas Bellinger <nab@linux-iscsi.org>, target-devel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, 15 Jun 2020, Chris Boot wrote:

> On 15/06/2020 00:28, Finn Thain wrote:
> > On Sun, 14 Jun 2020, Chris Boot wrote:
> > 
> >> I expect that if someone finds this useful it can stick around (but 
> >> that's not my call).
> > 
> > Who's call is that? If the patch had said "From: Martin K. Petersen" 
> > and "This driver is being removed because it has the following 
> > defects..." that would be some indication of a good-faith willingness 
> > to accept users as developers in the spirit of the GPL, which is what 
> > you seem to be alluding to (?).
> 
> If you're asking me, I'd say it was martin's call:
> 
> > SCSI TARGET SUBSYSTEM                                                          
> > M:      "Martin K. Petersen" <martin.petersen@oracle.com>                      
> [...]
> > F:      drivers/target/                                                        
> > F:      include/target/                                                        
> 

The question I asked you was intended to make you think. I wasn't asking 
you to search MAINTAINERS for "drivers/target" (I had already done so).

Chris, you can find my name in that file too. That's because I see my role 
as custodian of that particular code. That code lives in the kernel.org 
tree because others put it there and because users find it useful -- not 
merely because it happens to please the official glorious MAINTAINER of 
said code.

If you would ask, "who's call is it to delete drivers/nubus? or 
drivers/scsi/NCR5380.c?" my answer is, I have no idea.

> >> I just don't have the time or inclination or hardware to be able to 
> >> maintain it anymore, so someone else would have to pick it up.
> >>
> > 
> > Which is why most drivers get orphaned, right?
> 
> Sure, but that's not what Martin asked me to do, hence this patch.
> 

Martin said, "I'd appreciate a patch to remove it"

And Bart said, "do you want to keep this driver in the kernel tree?"

AFAICT both comments are quite ambiguous. I don't see an actionable 
request, just an expression of interest from people doing their jobs.

Note well: there is no pay check associated with having a MAINTAINERS file 
entry.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
