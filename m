Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8741FDA58
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Jun 2020 02:41:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlibu-0003Ke-SL; Thu, 18 Jun 2020 00:40:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jlibt-0003KW-JW
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Jun 2020 00:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sIllYvgGx50XjsR1Gy9Gx3RSl9ZNRzWW7RaUrtUh0Ls=; b=jR6TjF11rqj93gNjyVnPqgzVg0
 PwMjmoG78fFS7KP7OvlvWM+SLLxsE1OrQBHGFPl+FpBh5KlpuJ14KRkyqIr44Ik2i/ySjdzj3dZHQ
 aS/3IeJECvk3NHresSlgmfAqIzJCIX+MlXKdxO2tY/BssIPJP2DBYWnRhtkkEe2y69bw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sIllYvgGx50XjsR1Gy9Gx3RSl9ZNRzWW7RaUrtUh0Ls=; b=Ht8FgNXNPvffCOAznhj/bFZLTw
 D3nH49e6lbfXFSkqrreRcwr7NWVsiIjNGOhY+X+xeJOybGeckDHKMwY70lSA1mcRQNyELWAEN1Hhp
 nU8O8EGGpRiGE5IqqPsnGRwzsJeFFGOOBX4ERsF7Hxn2NHwrMIfC2ZbPEtm7Edb8vy5A=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jlibp-0070HF-6o
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Jun 2020 00:40:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 2C6062073E;
 Wed, 17 Jun 2020 20:40:40 -0400 (EDT)
Date: Thu, 18 Jun 2020 10:40:37 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <yq1366ul8o4.fsf@ca-mkp.ca.oracle.com>
Message-ID: <alpine.LNX.2.22.394.2006180953320.8@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
 <SN4PR0401MB35982D889857E3C03E96E49D9B9D0@SN4PR0401MB3598.namprd04.prod.outlook.com>
 <1592321667.4394.5.camel@HansenPartnership.com>
 <5e512185-45d1-61eb-9bec-91e9f9d53ea3@boo.tc>
 <yq1366ul8o4.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlibp-0070HF-6o
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Johannes Thumshirn <Johannes.Thumshirn@wdc.com>,
 Chuhong Yuan <hslester96@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicholas Bellinger <nab@linux-iscsi.org>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 Chris Boot <bootc@boo.tc>, "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, 16 Jun 2020, Martin K. Petersen wrote:

> 
> However, keeping code around is not free.

Right. And removing code isn't free either, if it forces people to find 
workarounds.

> Core interfaces change frequently.  Nobody enjoys having to tweak host 
> templates for 50 devices they have never even heard about.

And yet some people seem to enjoy writing patches that are as trivial as 
they are invasive...

You seem to be making an argument for more automation here, not an 
argument for less code. Or is there some upper bound to the size of the 
kernel, that might be lifted by adding maintainers? (Can you deliver a 
better product by adding more developers to your project?)

> Also, we now live in a reality where there is a constant barrage of 
> build bots and code analyzers sending mail. So the effective cost of 
> keeping code around in the tree is going up.

But if maintenance cost rises due to good analysis, the value of the code 
should rise too. So what's the problem? It seems to me that the real 
problem is too many analyses that generate pedantic noise and no tangible 
improvement in code quality or value.

> I get a substantial amount of code analysis mail about drivers nobody 
> have touched in a decade or more.
> 

When stable, mature code fails analysis, the analysis is also questionable 
(in the absence of real examples).

> Consequently, I am much more inclined to remove drivers than I have been 
> in the past. But I am also very happy to bring them back if somebody 
> uses them or - even better - are willing to step up and maintain them.
> 

You seem to be saying that 1) a driver should be removed when it no longer 
meets the present threshold for code quality and 2) that a low quality 
driver is eligible for re-addition because someone wants to use it.
I don't think you can have it both ways.

> I don't particularly like the notion of a driver being orphaned because 
> all that really means is that the driver transitions from being (at 
> least partially) somebody else's problem to being mine and mine alone.
> 

Yes it's your problem but only on a best-effort basis.

Many issues detected by automatic analyzers can be fixed with automatic 
code transformation tools. This kind of solution works tree-wide, so even 
if some defect in your driver is "yours and yours alone", the solution 
will probably come from others.

This email, like yours, is just hand-waving. So feel free to ignore it or 
(preferably) provide evidence of real defects.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
