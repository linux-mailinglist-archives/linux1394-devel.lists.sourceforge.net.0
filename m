Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BBB188C6D
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Mar 2020 18:46:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jEGIH-0002Eb-4i; Tue, 17 Mar 2020 17:46:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1jEGIF-0002EL-Qg
 for linux1394-devel@lists.sourceforge.net; Tue, 17 Mar 2020 17:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vQm+vlmu659cpypnuFH50VjPUs0VqRS5Eswjh1nLWCY=; b=FBahbS/qCPScT9WVLqIG0HXIUU
 DxptfyOnDOSQqfzdpxT2TNJjNc61XabLY5031r5+ap2cAv6fFBk9tC+pqk/7Ytwief2pDTBcqa0oZ
 JMh27NOE6HJguSqU5JjFvGn+1zyiuBN2PGYDKBi+6Mc5NvMXmEvG3OqGT4ujuZmG3fBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vQm+vlmu659cpypnuFH50VjPUs0VqRS5Eswjh1nLWCY=; b=JwxHyVwSJr6zI+VQiBmkmk2lrE
 hiy6OFY9Gtex0MGeVMELhluEVIM1ixHAuFQQ+/7eAH5c0oy6683z6vCBhGftFakKIXnmh8NPAMIiV
 Uv4vKfN9qZXcyMUH0lSRnc7Ywo3pdxxez6tDNwbzzQqRt864MU9cRcX8lIxFzIA1G1iQ=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jEGID-004P6A-D0
 for linux1394-devel@lists.sourceforge.net; Tue, 17 Mar 2020 17:46:19 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 02HHRurI015186
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 17 Mar 2020 18:28:08 +0100
Date: Tue, 17 Mar 2020 18:27:55 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 06/17] firewire: firewire-cdev.hL get rid of a docs warning
Message-ID: <20200317182755.1c4dd7e7@kant>
In-Reply-To: <1e2af9e7b75c2d968033b5054969c2095b317b16.1584456635.git.mchehab+huawei@kernel.org>
References: <cover.1584456635.git.mchehab+huawei@kernel.org>
 <1e2af9e7b75c2d968033b5054969c2095b317b16.1584456635.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jEGID-004P6A-D0
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
Cc: Jonathan Corbet <corbet@lwn.net>, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mar 17 Mauro Carvalho Chehab wrote:
> This warning:
> 
> 	./include/uapi/linux/firewire-cdev.h:312: WARNING: Inline literal start-string without end-string.
> 
> is because %FOO doesn't work if there's a parenthesis at the
> string (as a parenthesis may indicate a function). So, mark
> the literal block using the alternate ``FOO`` syntax.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

I figure this is meant to go through the Documentation tree, hence

Acked-by: Stefan Richter <stefanr@s5r6.in-berlin.de>

But if I am to apply it, give me a note.

> ---
>  include/uapi/linux/firewire-cdev.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
> index 1acd2b179aef..7e5b5c10a49c 100644
> --- a/include/uapi/linux/firewire-cdev.h
> +++ b/include/uapi/linux/firewire-cdev.h
> @@ -308,7 +308,7 @@ struct fw_cdev_event_iso_interrupt_mc {
>  /**
>   * struct fw_cdev_event_iso_resource - Iso resources were allocated or freed
>   * @closure:	See &fw_cdev_event_common;
> - *		set by %FW_CDEV_IOC_(DE)ALLOCATE_ISO_RESOURCE(_ONCE) ioctl
> + *		set by``FW_CDEV_IOC_(DE)ALLOCATE_ISO_RESOURCE(_ONCE)`` ioctl
>   * @type:	%FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED or
>   *		%FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED
>   * @handle:	Reference by which an allocated resource can be deallocated

-- 
Stefan Richter
-======--=-- --== =---=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
