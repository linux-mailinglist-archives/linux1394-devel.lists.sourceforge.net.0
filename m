Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 040F3880ED1
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Mar 2024 10:38:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rmsOv-0006pX-1P;
	Wed, 20 Mar 2024 09:38:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rmsOr-0006pB-HX
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RmzE00EXM2vxQuF5b27gxBIls1ICYCNA1HDT8ICJ1q4=; b=V9YI0kI+b2yZqgm2H7jR9zZqxS
 fhnzwC36f/AbDuS6XMMqSYTIaIeq7+Qr1JVMI3bdqRdmk5TShhitKpY1m7r2QnWtgsb5/loiecnd6
 kFPbsM8VJE+2vaPx+1tgJgiabDC0m6+Lhk+FBNt+Skgu4ScPgZhPGZUMC+M0KqHonLEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RmzE00EXM2vxQuF5b27gxBIls1ICYCNA1HDT8ICJ1q4=; b=lkxvmXGR2k/IRCUQSndj6hmBFL
 1V0/5MDLTltO+7XdNUe+BR2c2+4vpFdwxvy3eTvxhvZHDhD+IbV00G3rS+TXPJzHJ1LgcNuPvuy8p
 qAPSiXFzMZuGmHB/5/NlzyVSZwVvQAIbKSIFGjeTypRh8BkWjtVTFu9uoL/FOeQE6+og=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rmsOi-0003RJ-RT for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:38:21 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id B7B9B1DBE7E;
 Wed, 20 Mar 2024 05:38:09 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=LmAk3bVZn8A3NmxiPyik3L9AOXz8NDcKFLPz/Xc
 BXlU=; b=XhFJIV0dcf6dX7mAVMPeukWVemTm3XtiNO8xwiIjfnU8ya3ALVw1mr3
 J3xR/ldynoq1DVJJWkaRSqlVMdl9vhkaNCzhffNVf8JTKIJHfVxQlBMbKpJhVRce
 QvhyCHh+LHJj+pgU3I8zFLgkhhyHS9ptUF8d7Q6HXjSjEN11poYo=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id AE49E1DBE7C;
 Wed, 20 Mar 2024 05:38:09 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id E20F41DBE7B;
 Wed, 20 Mar 2024 05:38:08 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id B79DDC09A8;
 Wed, 20 Mar 2024 02:38:07 -0700 (PDT)
Date: Wed, 20 Mar 2024 02:38:05 -0700
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] firewire: core: use long bus reset on gap count error
Message-ID: <ZfqufddlPhxzcDCN@iguana.24-8.net>
References: <ZdxH-mjmd09jmYZN@iguana.24-8.net>
 <20240228004144.GA72391@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240228004144.GA72391@workstation.local>
X-Pobox-Relay-ID: 8FA78BC8-E69D-11EE-A798-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Takashi, On Wed, Feb 28, 2024 at 09:41:44AM +0900, Takashi
 Sakamoto wrote: > Additionally, for your investigation, you added the debug
 print to get the > timing of bus reset scheduling. I think it useful for
 t [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.108.71 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rmsOi-0003RJ-RT
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Takashi,

On Wed, Feb 28, 2024 at 09:41:44AM +0900, Takashi Sakamoto wrote:
> Additionally, for your investigation, you added the debug print to get the
> timing of bus reset scheduling. I think it useful for this kind of issue.
> Would I ask you to write another patch to add it? In my opinion, the case
> of mixed versions of 1394 PHYs in the same bus has more quirks and the
> debug print is helpful to investigate it further.

I'm sorry for my delay in preparing a patch.

I've submitted a patch to linux1394-devel to log when we schedule or 
initiate a bus reset. This is enabled with a new parameter to the 
firewire-core module. It provides logging similar to the debug print I 
used to investigate the reset loop.

Also, there is already logging for bus reset interrupts in 
firewire-ohci. This logs all bus resets and does not indicate whether we 
initiated the reset or some other node on the bus initiated it. However, 
the logging in firewire-ohci always froze my computer when I enabled it. 
I've submitted a separate patch to fix the firewire-ohci logging.

I believe both forms of logging can be useful. firewire-ohci logs all 
bus resets, but it doesn't tell where the resets came from. firewire-core 
only logs bus resets we initiate.

I also considered adding an option to firewire-ohci to log PHY register 
access. This would include writes to IBR and ISBR, so it would log when 
we initiate resets. However, this logging would be more complicated to 
add, so I didn't do it.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
