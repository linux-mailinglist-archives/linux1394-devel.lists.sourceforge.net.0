Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 794D31DF536
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 May 2020 08:36:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jcNla-0002Vc-5J; Sat, 23 May 2020 06:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@kroah.com>) id 1jcNlX-0002Uw-HF
 for linux1394-devel@lists.sourceforge.net; Sat, 23 May 2020 06:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:Date:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LrrYTVFkm9x5WAtV96l5QFTVfXK7jcQpg5sr70HsgwE=; b=Y8cGTl6j95lUI2TvOgxIdfirLN
 6JHPol/oB3bMis+otKuUzYjwWM0RiwOP4Cc3ybE6gV4d3qhhnbA1XyuuD4me622NlaI0whkle9b9V
 KSPdbz27NG7QGGZTgwLSfWTj3qDlEFq42JsuYpgROPWdgzFu2vEnbikwDOJ98Cs6g2oE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :Date:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LrrYTVFkm9x5WAtV96l5QFTVfXK7jcQpg5sr70HsgwE=; b=ghlbXl3wBawpVUID5Jerf5WNw0
 cknJtQN3hX2gOVLNWhCFY2ZAIxeTa264eaJp+baze5+aSuSnaq57kdvOd4zXOMmIAj7GCYeTMfvQD
 PXRJHpjzK6bpuiWMfjSADMX90vgEZtbwiRoU7xsz0nJ45GyuprZm91HJQQoxw34sA4ng=;
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcNlV-003FFU-UX
 for linux1394-devel@lists.sourceforge.net; Sat, 23 May 2020 06:36:15 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id B27D18CB;
 Sat, 23 May 2020 02:10:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sat, 23 May 2020 02:10:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 from:date:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=LrrYTVFkm9x5WAtV96l5QFTVfXK
 7jcQpg5sr70HsgwE=; b=kAPKJBbB3e4aBtF2OcbBUICIud8yPLH22RFoStnp4e8
 yDZXaIlUHk0hzMRsWVU1tHFiy4j0L0oLLRjDEWOTmhX/S/kyk3zo4JPIGMqvBvu/
 pVHsRR8shbwejVVYYURo0N2WYAO0gpTmU1ZNWJ2HUmC1oVxu4P8anVPVK5dPa3D3
 VCtDB+/zUbFUwYk4BMaqAjLO9JlrzQtA/2FPzETfMh6ca94xQ5B/gQDe0te1qzXw
 /DdP9SgJLR7qZbBpupaF2rfmz2uUpswbVzE6RAxliD1hVZEC6Cxme/m7h+bltlXo
 sgi1B50yNPN4u/lqaF3ofGVVEz6iGA+UFhvCDk9u8bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LrrYTV
 Fkm9x5WAtV96l5QFTVfXK7jcQpg5sr70HsgwE=; b=o3LniShnRlpl+p+BDDClSJ
 gFgFe65lkZbszodtwx+k48xiTCURwK42S+Fty6srSnJabd4skcMtn27IN77BBB4t
 0m6wvn6WSvufHru66KSihYcVKdZmLEv188Rj/+jHrpJRk7vef08ZiRmu6xJzZeUb
 brmvvzvNucIVMlzSlDVdJOwBLrzodmiQwcIIvPxG2miwdgmgYaS1xK3qbGXy0b/B
 0gwn3JDRJH9RlFMvMAS5WoQy9X9IX7E6Zbaj4Oc+/Nc8SxPoasIiShar3D91kh21
 l8/i2gHtlYm6pgY2gXS1A6QnKUZM07e1CXyuBXaMoKSP1JNtmNR25lY6c3PjWSTg
 ==
X-ME-Sender: <xms:T77IXlv6y-F4jWSN-g0qsuwh-D2FgNmSuQkyix1z2-REyP1dBZ1AQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddugedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhfffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepghhrvghg
 sehkrhhorghhrdgtohhmnecuggftrfgrthhtvghrnheptdehveeuieekuddvjefhlefgke
 dugeeffeffjeetieefgfduveehfedvheeludfhnecukfhppeekfedrkeeirdekledruddt
 jeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrh
 gvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:T77IXud2oWQcXqtjJpYSLzcm7xfysXz80uywdWroCd0IuG6WeZsNvQ>
 <xmx:T77IXoyC589Z7sLJ5OoU5m3ZDXiWXru70tkQEr2CPDnobSrWxGnt4Q>
 <xmx:T77IXsPJz4o-qG0QNang-l9w2SYk8cE6fRSpM7EiEVXr9iU2A99IVg>
 <xmx:UL7IXsVykN8rG8y8fgoGUWZ6glDMhYsF3Sub3bpYfEABCX_YO4a-ML45vUs>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id CFB1530664D9;
 Sat, 23 May 2020 02:10:22 -0400 (EDT)
From: greg@kroah.com
Date: Sat, 23 May 2020 08:10:18 +0200
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2] firewire: Remove function callback casts
Message-ID: <20200523061018.GA3131938@kroah.com>
References: <20200519173425.4724-1-oscar.carter@gmx.com>
 <20200520061624.GA25690@workstation> <20200522174308.GB3059@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522174308.GB3059@ubuntu>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcNlV-003FFU-UX
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
 Kees Cook <keescook@chromium.org>, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 stable <stable@vger.kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 "Lev R . Oshvang ." <levonshe@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Fri, May 22, 2020 at 07:43:08PM +0200, Oscar Carter wrote:
> Hi,
> 
> On Wed, May 20, 2020 at 03:16:24PM +0900, Takashi Sakamoto wrote:
> > Hi,
> >
> > I'm an author of ALSA firewire stack and thanks for the patch. I agree with
> > your intention to remove the cast of function callback toward CFI build.
> >
> > Practically, the isochronous context with FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL
> > is never used by in-kernel drivers. Here, I propose to leave current
> > kernel API (fw_iso_context_create() with fw_iso_callback_t) as is.

If it's not used by anyone, why is it still there?  Can't we just delete
it?

thanks,

greg k-h


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
