Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D64BE6B51B1
	for <lists+linux1394-devel@lfdr.de>; Fri, 10 Mar 2023 21:19:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pajCb-00081o-ES;
	Fri, 10 Mar 2023 20:18:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1pajC8-00081e-KL
 for linux1394-devel@lists.sourceforge.net;
 Fri, 10 Mar 2023 20:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pcev8BJZWYQLepMx9X31/3HimB8JVKFAyb4xq6/U0Jw=; b=WMfe5lZgBtDztl7KpWm301FXyh
 FI6bfqWMHlWIrik5DUvBHFch3tomPiV94TH5dWVZkLVo5OEI9990tA0finZiBbXS1n51if3wbcVX7
 NKXOqVJkSLKAc/2EJI0h5LZQXgJkkLt0Vq80AdAYtwkV1xa3DjVL8JygyVugs3F2d/O8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pcev8BJZWYQLepMx9X31/3HimB8JVKFAyb4xq6/U0Jw=; b=bkDPMFOvytb2XN4QKemR4YqYtL
 mm3FSxZCasAPWXE/4KJ1ZP1ZDdnhbFPm4Oj6Q3jSps1+62HPlbTHijNQuPX55kyXVnYdDKbidtB3T
 dJr3CgjlfdIJxrpRuguqqGyWnt8RaKY0+CImAkGonfwquC6m0zTDPH91tuwkL1NmIBr4=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pajBY-0006WV-84 for linux1394-devel@lists.sourceforge.net;
 Fri, 10 Mar 2023 20:18:02 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 32AK3utg3412285
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Fri, 10 Mar 2023 21:03:56 +0100
Date: Fri, 10 Mar 2023 21:03:56 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230310210356.561dbe63@kant>
In-Reply-To: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.35; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mar 06 Takashi Sakamoto wrote: > In the last few years,
 I have reviewed patches for FireWire subsystem and > requested sound subsystem
 maintainer to sent them to mainline, since > FireWire subsyste [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [192.109.42.8 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pajBY-0006WV-84
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
Cc: tiwai@suse.de, broonie@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mar 06 Takashi Sakamoto wrote:
> In the last few years, I have reviewed patches for FireWire subsystem and
> requested sound subsystem maintainer to sent them to mainline, since
> FireWire subsystem maintainer has been long absent. This situation is not
> preferable since we have some user of sound hardware in IEEE 1394 bus.
> 
> I will stand for the maintainer, and work for FireWire core functions and
> 1394 OHCI driver, as well as sound drivers. This commit replaces the
> corresponding entry.
> 
> As you know, IEEE 1394 is enough legacy. I would like to schedule the end
> of my work in the subsystem. My effort will last next 6 years. In 2026, I
> will start strong announcement for users to migrate their work load from
> IEEE 1394 bus (e.g. by purchasing alternative devices in USB and hardening
> system for them), then in 2029 let me resign the maintainer and close
> Linux 1394 project.
> 
> My current work focuses on real time data (sampling data) transmission
> protocol in packet-oriented communication, thus I would provide less help
> to implementations for the other type of protocol; i.e. IPv4/IPv6 over
> IEEE 1394 bus (firewire-net), SCSI transport protocol over IEEE 1394 bus
> (firewire-sbp2) and iSCSI target (sbp-target).
> 
> If receiving few objections from developers, I will start my work to send
> fixes for v6.3 prepatch, and PR for future v6.4 or later. I'm pleased if
> getting any help until the end.
> 
> Reference: commit b32744751e75 ("firewire: add to MAINTAINERS")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

Acked-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
> ---
>  MAINTAINERS | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8d5bc223f..e137c1b2f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7954,10 +7954,11 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nab/lio-core-2.6.git master
>  F:	drivers/target/sbp/
>  
>  FIREWIRE SUBSYSTEM
> -M:	Stefan Richter <stefanr@s5r6.in-berlin.de>
> +M:	Takashi Sakamoto <o-takashi@sakamocchi.jp>
> +M:	Takashi Sakamoto <takaswie@kernel.org>
>  L:	linux1394-devel@lists.sourceforge.net
>  S:	Maintained
> -W:	http://ieee1394.wiki.kernel.org/
> +W:	http://ieee1394.docs.kernel.org/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
>  F:	drivers/firewire/
>  F:	include/linux/firewire.h



-- 
Stefan Richter
-======--=== --== -=-=-
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
