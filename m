Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8375D1FC507
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Jun 2020 06:22:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlPaE-0003qI-TB; Wed, 17 Jun 2020 04:21:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jlPaD-0003qA-Pe
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 04:21:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QFW0KIDHyxhVxdZyGj1j1vi4SqBCTRtV4oq4VGuy2Qs=; b=OiRYVdiGGlGl20C+uaNnXjqpiy
 h7vYPgcZEw5uNyjXa/p/gsW7NkHhQpVdI6Rv+P9W0wk+A0znY8wsT03fX+eu7BQPUo/ZoOwEd5y4W
 +ssuT//ZPUooVsSxE03RfOM7ltVnygXWjpkJgD1snclrlQSuybfpgVBjxZ3CFw0t+luA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QFW0KIDHyxhVxdZyGj1j1vi4SqBCTRtV4oq4VGuy2Qs=; b=VozryKocYJ+W3FzJBNVoaGrDoW
 XD6fLYf4zxYDiNoayc309z41BgMaubee/uPF4KQ59+THEDOeXytE+hASV81q3pDzyoYMM/eQgzymG
 ql/0rtplONBQoIMg79etOhQ8ww3rZLf4pt66v1zDyT3yX7pLFvTVaoIQkHhFiDylGEmY=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jlPaC-006Ijx-Fm
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 04:21:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 020AA27F1F;
 Wed, 17 Jun 2020 00:21:37 -0400 (EDT)
Date: Wed, 17 Jun 2020 14:21:39 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <yq18sgml9ds.fsf@ca-mkp.ca.oracle.com>
Message-ID: <alpine.LNX.2.22.394.2006171310520.11@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <yq18sgml9ds.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlPaC-006Ijx-Fm
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
Cc: Chris Boot <bootc@bootc.net>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, 16 Jun 2020, Martin K. Petersen wrote:

> > I haven't used this driver for a long time, but I still own PowerMacs 
> > with firewire, and I know I'm not the only one.
> 

I need to correct what I wrote above. I recall that years ago, when I 
needed to share storage from my Linux box to my PowerBook pismo, I used 
ethernet and the globalSAN iSCSI initiator for Mac OS X (which is no 
longer freely available AFAICS). When I said that I had used the SBP 
target driver before, I misremembered that iSCSI target setup. I've 
actually never used the SBP target driver.

> I also have old 1394 hardware kicking around in the basement. But having 
> worked with FireWire shared storage targets in the past, I have zero 
> desire to ever touch any of that again.
> 
> I could understand an objection if we were to entertain removing sbp2. 
> But really, how many people are setting up FireWire targets?
> 

It's a good question. I don't know the answer.

I have successfully used the Linux sbp2 host driver in the past, and will 
probably need to use it again. Likewise, I can see myself using the sbp 
target driver in the future because that might interoperate with MacOS 9, 
and might provide a bootable device to the PowerMac ROM. iSCSI cannot do 
those things.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
