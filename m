Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F292F48BF7B
	for <lists+linux1394-devel@lfdr.de>; Wed, 12 Jan 2022 09:06:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n7Ydp-0001Vu-3e; Wed, 12 Jan 2022 08:05:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <marcan@marcan.st>) id 1n7Ydn-0001VO-JL
 for linux1394-devel@lists.sourceforge.net; Wed, 12 Jan 2022 08:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DbMk7u0hsoxkRkoI2puCbHrby//UB1W5rBpm7hR57RU=; b=VlCBCyYl47UTsJN4dTCwTrkHcl
 j12tY/05+AX3wrEYx2ZUClfABcc3tRtxYNIy/E1tNBv86tUBk+eNlxznxEiECI46gQTXOld4sXnaR
 Z2csVn8/Y1x8oU6EoduwOr7fBkkGwvSVgJ0dDJ8kBssa1Jc6hjUsej/sfShjhMDQNRys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DbMk7u0hsoxkRkoI2puCbHrby//UB1W5rBpm7hR57RU=; b=k+Vfjso70//uP1B56oTMcuWr4y
 P5QaA+YBLvvWESqE69sOLhsP5z8iM1QG6Y8v1kCwosZAlrOOZBI6hf8P74pzsqDZORDKBIeYgQsHw
 i3I4DfnWmWbBlWFrp5Rko3oo9v897kGpT0tBbC3bELPw1cwLUjq9byjmoalqmrTbGn7I=;
Received: from marcansoft.com ([212.63.210.85] helo=mail.marcansoft.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7Ydj-00Ccb7-U7
 for linux1394-devel@lists.sourceforge.net; Wed, 12 Jan 2022 08:05:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: marcan@marcan.st)
 by mail.marcansoft.com (Postfix) with ESMTPSA id 1916744B5E;
 Wed, 12 Jan 2022 07:47:07 +0000 (UTC)
Message-ID: <0beed477-adc4-5362-f116-669832c862b1@marcan.st>
Date: Wed, 12 Jan 2022 16:47:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.4.1
Subject: Re: [PATCH 0/3] firewire: assist unit driver to compute packet
 timestamp
Content-Language: en-US
To: stefanr@s5r6.in-berlin.de, alsa-devel@alsa-project.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
 <YcGycqUrptkWYeOV@workstation> <YdgdfrcvhJrUXwYF@workstation>
 <Yd5QNs/YnvzGOy0g@workstation>
From: Hector Martin <marcan@marcan.st>
In-Reply-To: <Yd5QNs/YnvzGOy0g@workstation>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/01/12 12:51, Takashi Sakamoto wrote: > Hi Stefan,
 > > I'm sorry to post messages several times for the patchset if you are >
 still busy. But I'm still waiting for any reaction. > > I note that [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n7Ydj-00Ccb7-U7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2022/01/12 12:51, Takashi Sakamoto wrote:
> Hi Stefan,
> 
> I'm sorry to post messages several times for the patchset if you are
> still busy. But I'm still waiting for any reaction.
> 
> I note that Linus have announced merge window for v5.17 kernel.
>  * https://lore.kernel.org/lkml/CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com/T/#u
> 
> I'm glad if seeing your action for pull request as a response to the
> window.

Hi Tahashi,

Just FYI, I think a lot of maintainers have been off or doing less work
over December/the holidays; I also have some things that didn't make it
into subsystem trees for 5.17. So I'm guessing this patchset will have
to wait for 5.18. AIUI most maintainers don't merge things into
subsystem trees after the upstream merge window opens.

I've also been meaning to test your Firewire improvements again (and
also with Pipewire), but I've been pretty busy lately... hopefully I'll
get a chance soon. When I tried the first round of improvements that got
merged (the sequence replay stuff) I noticed it fixed the glitchy audio
problem, but the minimum stable period size with JACK+ALSA was still
higher than with JACK+FFADO, and Pipewire also had even higher
latencies. So I'm back using FFADO but I hope I can switch to ALSA soon :)

-- 
Hector Martin (marcan@marcan.st)
Public Key: https://mrcn.st/pub


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
