Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C66CB33A3DA
	for <lists+linux1394-devel@lfdr.de>; Sun, 14 Mar 2021 10:26:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lLN0z-0001cm-I0; Sun, 14 Mar 2021 09:26:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1lLN0l-0001cO-M7
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Mar 2021 09:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTn27SWTTppffDOXdwFr8TEUED8mSEMXPQd5OiirCmA=; b=mjfjOSt1XRgXrN6yq3KWtm5T1N
 ZqGOit1yGlbQN8F36+YOVXFPT0OC4e95CsdJGm6Y9xRizp0/AnK1oY+ANdXOXvg0PmQVnGmX/IX+c
 5u4DThH91MSMez+MHfwKnLFvc+Q5lNsIp9sBBx8hEcHzbOw79ZGdxui09SyAMPPaIMjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KTn27SWTTppffDOXdwFr8TEUED8mSEMXPQd5OiirCmA=; b=g9c9X50l5fq9decRY16MY6jgPn
 j4LXA63nv7FFGtiTmsxqKNn6zyXGizZpQ1NeEQNyhqI1RlMYTk5bys8h/vsQWTmuTIpQRbK0TNwqD
 3+IqTIQltUJfiurvZ01NRpyRiwfWG79OCxmbgtRXA+gImX5TdRLV3PjdCfWyv5X0cHoc=;
Received: from einhorn-mail-out.in-berlin.de ([217.197.80.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lLN0V-00DclT-PC
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Mar 2021 09:26:11 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 12E9KeEg004322
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 14 Mar 2021 10:20:41 +0100
Date: Sun, 14 Mar 2021 10:20:39 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: Re: [PATCH] firewire: Use bitwise instead of arithmetic operator
 for flags
Message-ID: <20210314102039.21bbb75d@kant>
In-Reply-To: <1615273899-88446-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1615273899-88446-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lLN0V-00DclT-PC
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

On Mar 09 Jiapeng Chong wrote:
> Fix the following coccicheck warnings:
> 
> ./drivers/firewire/core-device.c:973:22-23: WARNING: sum of probable
> bitmasks, consider |.
> 
> ./drivers/firewire/core-device.c:954:22-23: WARNING: sum of probable
> bitmasks, consider |.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/firewire/core-device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
> index 6821698..e04832d 100644
> --- a/drivers/firewire/core-device.c
> +++ b/drivers/firewire/core-device.c
> @@ -951,7 +951,7 @@ static void set_broadcast_channel(struct fw_device *device, int generation)
>  	if (device->bc_implemented == BC_UNKNOWN) {
>  		rcode = fw_run_transaction(card, TCODE_READ_QUADLET_REQUEST,
>  				device->node_id, generation, device->max_speed,
> -				CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
> +				CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL,
>  				&data, 4);
>  		switch (rcode) {
>  		case RCODE_COMPLETE:
> @@ -970,7 +970,7 @@ static void set_broadcast_channel(struct fw_device *device, int generation)
>  				   BROADCAST_CHANNEL_VALID);
>  		fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
>  				device->node_id, generation, device->max_speed,
> -				CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
> +				CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL,
>  				&data, 4);
>  	}
>  }

It's "base address + address offset". The arithmetic operator is correct.
-- 
Stefan Richter
-======--=-= --== -===-
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
