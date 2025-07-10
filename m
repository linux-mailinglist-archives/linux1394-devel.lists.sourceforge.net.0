Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD5FB0027D
	for <lists+linux1394-devel@lfdr.de>; Thu, 10 Jul 2025 14:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+TW5y5OT1lNHyB/JkUcUs/AxFL+teMT591NJ1QLD8w=; b=HGbMSaE3h4ZUVDnqis1aofxd1q
	TqudcLwdyZinSHgpkbIt5J8G/of0uPtCIpT0kcE5Yc5THDYyeUHFq8JA8JkfLKCjim6h4Qthop9Nq
	ZJ04oaODXnhBRJk09vTnoYaShSOPquiZdVzYBDaGAONddwaSx1+A2FmzKbrMUgAKL9to=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uZqlZ-0003vD-JD;
	Thu, 10 Jul 2025 12:52:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uZqlW-0003v2-Sj
 for linux1394-devel@lists.sourceforge.net;
 Thu, 10 Jul 2025 12:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yynqYj7tMkAm1XPpixejs+zcGcMwak7RL7iH88kusPo=; b=TRrJNwgfviMRlSV0NNEhJDjusB
 +t/nox1lsTS7D9e/H3jErfJIRwF8lURkHWXoOe2OoKWq8ND6381AB/CzRDg9np2aynWs28aSg5cbM
 AkzZ2YUqpZHJpQNn2tKNIFYit8JMtSJ6WvVeX/ngp6tEuqAQOfJViYNjq3d8xbXFsR4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yynqYj7tMkAm1XPpixejs+zcGcMwak7RL7iH88kusPo=; b=a7T/PC7Tbd/jixJqHe7ZKmZvE3
 fN5HqnyXCkwkbR7FGbwJkz3jn7Hi/0i/CyCXY1T4v/qOZTY9VJwoCzFWmpWD2u4VZqHdgZglsQyaV
 F22T7cyxAqy2cuKZ71ZsnQKD6zKWXnvRwt/P1Qa9bfqsmqXLlB7j9JkdTjx5tZA9e0/g=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uZqlV-00041u-G2 for linux1394-devel@lists.sourceforge.net;
 Thu, 10 Jul 2025 12:52:42 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 980AA7A0130;
 Thu, 10 Jul 2025 08:52:30 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Thu, 10 Jul 2025 08:52:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1752151950; x=
 1752238350; bh=yynqYj7tMkAm1XPpixejs+zcGcMwak7RL7iH88kusPo=; b=P
 QcycRs0QIEJ816OMbyHB+ovZ20t8Ho2zAQfytwWrt94XFMyuV+ZS8fqaR5OFKQZD
 BjKgx+6LKk2WSP55QacaSsYVHEv7zKX6Q1YX45lQOHpwIop+Xza/ECq4S/Eg2EVn
 BJGHs/a49KWiVEhmQAsrR8WXkAStPdVj9PuPHrYDAVE0ZIeNSqIBTEeBTRRlM88N
 SpmY/XohFToDFzlYmAOr8iiLUInH/OL37s8wMzmHozxTnv4ZqqzzE0uS/qFo6MMF
 73s7S770YpAgpAmGKjOF9rhQXCRbbStxLyR5A6y1FOHXDludR7OvWEGLAoHn/Ms/
 m9pkOi91gXSIiILf8GrgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1752151950; x=1752238350; bh=yynqYj7tMkAm1XPpixejs+zcGcMwak7RL7i
 H88kusPo=; b=CbbkcB5Vg/YoUws3a9GIdlX5fOvhpEQMI2D/VmG6fb8gkMB/ALJ
 DXkH5+8i/vFz2OaNq7xSec9yeiU+3jLPD04VQ0f/oYjk/R7EWD6ad1Mr1H0Q8s55
 mQANmw39WCMGvNvZdd11R1OZ0yMdwZ7asC0dZHleh6OhoG4GPbCoNRi7JoWrYBBK
 pG06l/5dpkzrU7gIaUaIpuSUVsRWByfig8VmRMnSd9UmjZcBM81sLihqEHGVm3Ep
 SbPVPGSq+z0ue8lz01UlfQ2Twvsa5ngzP1B8EuOj7NU8kada4f1aj0M/F9Buud+G
 4knpgtwP5AXaVG3BAaBLySizvdiwRHNIG5A==
X-ME-Sender: <xms:jrdvaI_UnNRTA8OaAeL37Ch9u-W3vd9HJsSQoSlRJcRm-HN6I85oOA>
 <xme:jrdvaHl29M3N5JSAa6NBMNpZviEUnjkWQqmolXPoDECc1AaMVPAV9C24R22IZNAyi
 G4ejji6E7QWGX7MhD4>
X-ME-Received: <xmr:jrdvaK-opIPx-sY4Hi8bLiRJzQ-YECAh42da9FztUU7h-vjlkNvFLJkaxVXXyYujUtIfPKE6aeM_v4Rbs1ldWDhraJv6HBD3HA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdegtdegkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedv
 leeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehpuhhrvhgrhigvsh
 hhihehhedtsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidufeelgedquggv
 vhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlih
 hnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jrdvaFkW0K2EZ1nXDqV08fxpRT79CpqAhBz0GYUvYYCPF_SWGq1YeQ>
 <xmx:jrdvaH066CAQOIztjbF-ME84-kHQcZqawFekxRbQ5SO5_Wyi-131WQ>
 <xmx:jrdvaApDk2ZQS2QVESizsK4ppPkb2oQE5a9Z-ej_1BcS2zxMAqtRkQ>
 <xmx:jrdvaEeVRk2Y7QSG9iDHE5AKfMz11SO0wyPz-umrDN9ruel9aTyr7w>
 <xmx:jrdvaAGRizR5D7tuaggfx-p-S9T1zmkekHS20pW5JTSGBRRJqLlFBMgd>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 10 Jul 2025 08:52:29 -0400 (EDT)
Date: Thu, 10 Jul 2025 21:52:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Purva Yeshi <purvayeshi550@gmail.com>
Subject: Re: [PATCH] firewire: ohci: Initialize payload_bus to avoid
 uninitialized use warning
Message-ID: <20250710125227.GA25686@workstation.local>
Mail-Followup-To: Purva Yeshi <purvayeshi550@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20250710073906.24105-1-purvayeshi550@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250710073906.24105-1-purvayeshi550@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Jul 10, 2025 at 01:09:06PM +0530, Purva Yeshi
 wrote: > Fix Smatch-detected error: > drivers/firewire/ohci.c:1514
 at_context_queue_packet()
 > error: uninitialized symbol 'payload_bus'. > > Smat [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uZqlV-00041u-G2
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

Hi,

On Thu, Jul 10, 2025 at 01:09:06PM +0530, Purva Yeshi wrote:
> Fix Smatch-detected error:
> drivers/firewire/ohci.c:1514 at_context_queue_packet()
> error: uninitialized symbol 'payload_bus'.
> 
> Smatch reports a potential uninitialized use of 'payload_bus' in
> at_context_queue_packet(). If packet->payload_length is zero, the
> variable may not be set before reaching the dma_unmap_single() call,
> which could lead to undefined behavior.
> 
> Initialize 'payload_bus' to 0 to ensure it has a defined value in all
> code paths, preventing any uninitialized access.
> 
> Signed-off-by: Purva Yeshi <purvayeshi550@gmail.com>

In my opinion, we should pay enough attention to the value of
'packet->payload_mapped' variable when considering the issue.

```
$ cat -n drivers/firewire/ohci.c
     ...
1385 static int at_context_queue_packet(struct context *ctx,
1386                                    struct fw_packet *packet)
1387 {
1388         struct fw_ohci *ohci = ctx->ohci;
1389         dma_addr_t d_bus, payload_bus;
     ...
1474         if (packet->payload_length > 0) {
1475                 if (packet->payload_length > sizeof(driver_data->inline_data)) {
1476                         payload_bus = dma_map_single(ohci->card.device,
                             ...
1485                         packet->payload_mapped  = true;
1486                 } else {
                             ...
1489                         payload_bus = d_bus + 3 * sizeof(*d);
1490                 }
                     ...
1496         } else {
                    ...
1499         }
             ...
1506         if (ohci->generation != packet->generation) {
1507                 if (packet->payload_mapped)
1508                         dma_unmap_single(ohci->card.device, payload_bus,
1509                                          packet->payload_length, DMA_TO_DEVICE);
                     ...
1512         }

Unless the variable has true, the dma_unmap_single() is never called,
thus the issue does not occur.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
