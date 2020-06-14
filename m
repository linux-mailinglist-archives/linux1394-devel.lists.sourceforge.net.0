Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 474BF1F8B51
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Jun 2020 01:29:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jkc4E-0005On-Un; Sun, 14 Jun 2020 23:29:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jkc43-0005O8-CM
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Jun 2020 23:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T8AeojZ70gQtwUIfOBVllsQmVJPPeOu8qbPVCHAGo8o=; b=D1NIyqfvoq/GPC3yBqgg0WLYQc
 i7GxRTFH9YfVZUIuQ0L0byPdkgckEJ01guS7A0P50kVT/eF/XBiPi45T8U1Sm02DVNRJ7XNOzbH1M
 aogRrLWrTJrsmARMR9os9Ul+DdHIsRd1bgn92o9qEWOY+vs3AT8eOqjQT3g5M5TCW5KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T8AeojZ70gQtwUIfOBVllsQmVJPPeOu8qbPVCHAGo8o=; b=GtFdRWTnjgmUe76znIoPVBjWR7
 rGfTuZ3DgkmQ4WWlQhC4otxfwLtITTm3OEcXFyrkmaODEb/ZYqqrTZ1l2+i0+A5NLeMhQrn9tBl/f
 KNIcDt5Q3sHGrhtNKWeqnm95J/+JaV7UYiab1qYGFJhVdPBa/lDpYBPs3xwlvkieNWMc=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jkc3u-005hQX-62
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Jun 2020 23:29:16 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id BFEE1272D7;
 Sun, 14 Jun 2020 19:28:56 -0400 (EDT)
Date: Mon, 15 Jun 2020 09:28:56 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Chris Boot <bootc@boo.tc>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
Message-ID: <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jkc3u-005hQX-62
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
 target-devel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, 14 Jun 2020, Chris Boot wrote:

> I expect that if someone finds this useful it can stick around (but 
> that's not my call).

Who's call is that? If the patch had said "From: Martin K. Petersen" and 
"This driver is being removed because it has the following defects..." 
that would be some indication of a good-faith willingness to accept users 
as developers in the spirit of the GPL, which is what you seem to be 
alluding to (?).

> I just don't have the time or inclination or hardware to be able to 
> maintain it anymore, so someone else would have to pick it up.
> 

Which is why most drivers get orphaned, right?


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
