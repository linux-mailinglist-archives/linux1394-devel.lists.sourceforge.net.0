Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9847886CA7F
	for <lists+linux1394-devel@lfdr.de>; Thu, 29 Feb 2024 14:41:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rfgfN-0001a7-Gi;
	Thu, 29 Feb 2024 13:41:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rfgfM-0001Zw-KO
 for linux1394-devel@lists.sourceforge.net;
 Thu, 29 Feb 2024 13:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P4cLnRFuHCRbRmkUo6yIMPuD8xWhrFOFHVDQrYs2fQY=; b=leRA7nLiZn/1Qk5QHeLkl96mrh
 7lPhb+AWo/je98kx2KsFzCwPCNf7OMy/Xnn+khVxeypJMZxfyDzhtFfeFlEP+auJZU8yWAIyyUIja
 rN++R4fcm1MXq92mK30//zBA9k7ZnokEgo/DApGM8GOKERqwjQ0FC+vDHHUrrYTh7gjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P4cLnRFuHCRbRmkUo6yIMPuD8xWhrFOFHVDQrYs2fQY=; b=SgFRYxoNgt1phqJI9bi7XNqOiG
 VTYHjs9OC6mRV90cqHZ/8Rv+RbEhdYEIMdJFmu9BmdyXl1fGvg/FdsEd2RkIjQDrwFuTGv+ultLz2
 EMPzJXmED7cNqH40hGR5e+AaWGts1p5vb7KXrW0sjs8s8MWIOSI1P/Ye2qOokAbVoQDk=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rfgfJ-0004RR-M3 for linux1394-devel@lists.sourceforge.net;
 Thu, 29 Feb 2024 13:41:40 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id EB2B413800BA;
 Thu, 29 Feb 2024 08:23:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 29 Feb 2024 08:23:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709213016; x=
 1709299416; bh=P4cLnRFuHCRbRmkUo6yIMPuD8xWhrFOFHVDQrYs2fQY=; b=n
 l+eRGimaiMb9V9dtS+v0cMwuNAobHhTvq66ZsDrRQg7BZGtH5RH0IfXTaeDbtHS2
 F6SRAC8q59yUyS2jq6wd/55ELMKuMLDcK2BXKLSx87CuJG/S257FkyhGf9F7INOl
 NhgU1cZDwVAzzHfg7BgWVeoUP9Ps7EMJ7stwl5X8u28SQzedT9wryXWKykMWBq/c
 EIv6Y3nTO/TJ0cUS2fQgRyJpupUiPeTYznRQw4W8dk5L6dCY28+45ACwBcAbWrPm
 tCx34JPRJcYqpEdcVK69k39MbFBvh4srinC/lw+VZYIT/Xnqg7VNEz7JsE1Z5FD2
 6teFZcVVrkFVMnQDv794w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709213016; x=1709299416; bh=P4cLnRFuHCRbRmkUo6yIMPuD8xWh
 rFOFHVDQrYs2fQY=; b=D4bw5lageGzvl2MfOgwUqksEVPjK66H5JHui5/Imjodj
 hIBxl4rK6awuCG4viYBpnS/MxVVJbfS6u4otw0r26o7xtnXoUEn6MAR4sqbaJpqy
 rlB3GGB63V6S0HRoALrW3PRzoXQE4mS7sFkWYeD69yjS0BGOSi9JE9na0rKe/sRG
 Ary19VNTnBlXFSWXbuVyJQDRffKKxU31626j4VzewX+e84Nd4V+CnYZ+/aw6miqY
 Hj72qw3E5Y0EZbifJ0KqqMPeh1gPotYy3UWJxxNo4THjedKMwVrZmv8Wki6fhZ9A
 TcLZrVKQHKeqrBjSHZ0kIsy48CZhWq8XZnMyWZpu2A==
X-ME-Sender: <xms:WIXgZVz4aCHMUOMZqHXOhzNmI6PHrhQ58umZtFZNh2na-CxqvKX9iQ>
 <xme:WIXgZVSDmo0HW0oWj0eq3RrPODQKTVhGq92LECYOhN-fI-Q1LjS4zC8hW4UWHoqiE
 3M6PbCgP18bz2MAQrY>
X-ME-Received: <xmr:WIXgZfW6l_1tDJgHD2re_MUS419C3BuPXn0vZWD3rwRqK7wSqCpZPDEpkQLFndDTvJiEeNtU072w__cxSLlnxncoRZuXVxTY7YQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrgeelgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpeffhffvvefukfhfgggtuggj
 sehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeej
 hffhgeeutefhfeeugfeggeduhfekffduhffhheekhfdtveefhfejjefftdfgjeenucffoh
 hmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttg
 hhihdrjhhp
X-ME-Proxy: <xmx:WIXgZXgkUmD9GO5gMg870LvKl0C-AHZA2wG-qraYIq51EN06CKCLzg>
 <xmx:WIXgZXAbobqWjvsTJwI6S7OzwSGlpk5X6BznxVH1HtyjeZIXP8sCkQ>
 <xmx:WIXgZQLrZSERJWDmh54tmRddwrU92J56EZVprKKnwY0cFKlHLVnVWg>
 <xmx:WIXgZaMmymIFSjeW9WU5zkMk6druVQVtGCzJmA-BKeh9qKGC9X9seA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Feb 2024 08:23:35 -0500 (EST)
Date: Thu, 29 Feb 2024 22:23:33 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH v2] firewire: core: use long bus reset on gap count error
Message-ID: <20240229132333.GA14133@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net
References: <Zd8SlIDexjaO8LNU@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zd8SlIDexjaO8LNU@iguana.24-8.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Feb 28, 2024 at 03:01:41AM -0800, Adam Goldman
 wrote: > From: Adam Goldman <adamg@pobox.com> > > When resetting the bus
 after a gap count error, use a long rather than > short bus reset. > > I [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rfgfJ-0004RR-M3
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Feb 28, 2024 at 03:01:41AM -0800, Adam Goldman wrote:
> From: Adam Goldman <adamg@pobox.com>
> 
> When resetting the bus after a gap count error, use a long rather than 
> short bus reset.
> 
> IEEE 1394-1995 uses only long bus resets. IEEE 1394a adds the option of 
> short bus resets. When video or audio transmission is in progress and a 
> device is hot-plugged elsewhere on the bus, the resulting bus reset can 
> cause video frame drops or audio dropouts. Short bus resets reduce or 
> eliminate this problem. Accordingly, short bus resets are almost always 
> preferred.
> 
> However, on a mixed 1394/1394a bus, a short bus reset can trigger an 
> immediate additional bus reset. This double bus reset can be interpreted 
> differently by different nodes on the bus, resulting in an inconsistent gap 
> count after the bus reset. An inconsistent gap count will cause another bus 
> reset, leading to a neverending bus reset loop. This only happens for some 
> bus topologies, not for all mixed 1394/1394a buses.
> 
> By instead sending a long bus reset after a gap count inconsistency, we 
> avoid the doubled bus reset, restoring the bus to normal operation.
> 
> Signed-off-by: Adam Goldman <adamg@pobox.com>
> Link: https://sourceforge.net/p/linux1394/mailman/message/58741624/
> ---

Applied to for-linus branch. I'll send it for v6.8-rc7 in this weekend.
I guess that the maintainers for the stable and longterm kernel would
pick it up, like your previous patch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
