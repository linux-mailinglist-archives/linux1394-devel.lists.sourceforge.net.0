Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F5A6B59F5
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Mar 2023 10:16:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pavKy-0007bZ-OJ;
	Sat, 11 Mar 2023 09:16:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1pavKl-0007bP-Hc
 for linux1394-devel@lists.sourceforge.net;
 Sat, 11 Mar 2023 09:16:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ENYeVm/t7xCKQmAJenHSMRsFnLj0jjb5rBmpyzBw0Y=; b=k7fLfEzNI9Mdb219aBrTGiPfqs
 vN2JI3iQYACbTrlTD16qaOaiBPbcMWZn10bPszwsqh0iqS6cvgbR+gSX/atH2JZ8Yr4PxZhysoUMn
 eWw/U3ZCjz6SfyATI+5bMwWYaw7ofPxV+AB84XymGuWKPAssQBZQ9lSKqmNZrDmOc1X4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ENYeVm/t7xCKQmAJenHSMRsFnLj0jjb5rBmpyzBw0Y=; b=TqtVLW5RszvAoH1op134xk4RlN
 oM5y9UQWQn4YB9Nz07iI5OOVlqQrlnv4vDvmPiHz/o/iXYBYAUaHMOfiRM4Z9Hf84VbZBdyV+y3AQ
 E6mifVKGvGaqOx9yD/xRgS9eAJFFgCJ5GnoWDrMBPgMUNfZ5ZqpMModur6rMZBH9iSiI=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pavKj-0002oo-Pk for linux1394-devel@lists.sourceforge.net;
 Sat, 11 Mar 2023 09:16:12 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 32B9Ftmi3700766
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sat, 11 Mar 2023 10:15:55 +0100
Date: Sat, 11 Mar 2023 10:15:54 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230311101554.14c211d4@kant>
In-Reply-To: <20230311080343.GA378828@workstation>
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
 <20230310210356.561dbe63@kant>
 <20230311080343.GA378828@workstation>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.35; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: On Mar 11 Takashi Sakamoto wrote: > I'm glad to see you again
 in the list ;) > > I really appreciate your long effort for the subsystem.
 I guess that your > life became swamped recently against your w [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [192.109.42.8 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pavKj-0002oo-Pk
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

On Mar 11 Takashi Sakamoto wrote:
> I'm glad to see you again in the list ;)
> 
> I really appreciate your long effort for the subsystem. I guess that your
> life became swamped recently against your work in the subsystem, while I
> feel that soft-landing of the project is still preferable for users.

Thank you. I need to apologize that I neglected to (at least) drop my
maintainership title myself. I should have done so when I started to
realize that I am not able to fulfill this role anymore.

> Below items are in my plan for the subsystem until being closed. I'm
> pleased if getting your help in any time.
> 
> * 2023, 2024, 2025, 2026
>   * take over the subsystem maintainer
>     * set up repositories in `<https://git.kernel.org/>`_

Do you plan to re-use the existing (but neglected, by me) repos at
kernel.org? 
	https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
	https://git.kernel.org/pub/scm/libs/ieee1394/libraw1394.git
	https://git.kernel.org/pub/scm/libs/ieee1394/libiec61883.git

If so, is there something which I can do to transfer access to you?
(Although if yes, before that I need to enable myself to send encrypted
e-mails again, after both of the mail user agents which I use dropped gpg
support. Maybe the kernel.org admins can assist you quicker with repo
access than I might.)

>   * refresh web site and update information
>   * take over the administration of communication channels
>   * adding the list archive of linux1394-devel to
>     `lore.kernel.org <https://korg.docs.kernel.org/lore.html>`_
>   * fix issues of subsystem
>     * modernize 1394 OHCI driver
>     * Pull requests to Linus
>   * get help from Linux Foundation to place documents for specification
>     defined by 1394 Trade Association
>     * If no problems, upload the documents to the new web site
>   * invite repositories of external librararies (``libavc1394``, ``libdc1394``)
>     * Announcement to distribution package maintainers about the upstream shift
> * 2027, 2028
>   * Close announcement to below applications
>     * `FFMPEG <https://ffmpeg.org/>`_
>     * `GStreamer <https://gstreamer.freedesktop.org/>`_
>     * `VLC <https://www.videolan.org/vlc/index.ja.html>`_
>     * `MythTV <https://www.mythtv.org/>`_
>     * `FFADO <http://ffado.org/>`_
> * 2029
>   * Close the project
>   * Close the communication channels
>   * Archive repositories
>   * Resign the subsystem maintainer

It's good to see you being active in the kernel and related userland
development/ maintainership, and that you have a plan for the next years.
-- 
Stefan Richter
-======--=== --== -=-==
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
