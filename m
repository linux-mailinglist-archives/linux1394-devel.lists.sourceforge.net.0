Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E201B848B79
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Feb 2024 07:23:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rWVtx-0004X7-Gb;
	Sun, 04 Feb 2024 06:22:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rWVtv-0004Wv-EA
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Feb 2024 06:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C5raWITg5fiL8Do4ZdfOiG7EdSRKlChe2K7bc++37aM=; b=A7QeOj+lN/UvTvYMoRpyvaOdPv
 Pf/bnpMIdm7X+ntxHqqikaU5jLxybPK7/l6JQ189F7mN3weObrqBhn7niBDEKvHK4hyXMsLPYqfon
 v6XrWKxEbr3+mAEOjVMf/2hPwDjjhA2vW587NXyYUV5T9MHU2Xm2nK5i8aH19z0NWDxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C5raWITg5fiL8Do4ZdfOiG7EdSRKlChe2K7bc++37aM=; b=VbNbvVCznIqNx4mNtY7Pwz0ULm
 +iGW0Bj8adJ5ujXn1Dd6TdAvdX+oIGJRjYf9iV9oxnTt5Xmvnw+HaHXEJoWTsLgzSXjm7g5LFPtVZ
 OY/l8h73+Y67ETUYPpdY9AKx2x04ecZydjywe9sllCNWsTYWuKjBB9YiRznPENQuEg1U=;
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWVtq-000058-Kd for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Feb 2024 06:22:47 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id CE06029B55;
 Sun,  4 Feb 2024 01:22:32 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=Ivcae1sfCiwh3asxtu/ucVxviQTlilRsKiCM9IP
 tg+c=; b=jgHGOvgVrYOfy5nkDgNlVvW9IkWV80t5py1NVqcz/S6mK7NZx88DO8K
 7wc+Fg5XWmpi8Fhf+/8SsenRK6c52qLrmp89EtGr+JtFqiqiP3twLgVGGRv4Vsvs
 vMhKqWnyNuoYnEoNWQym36IQXwDfc0aCNHw0R7bmabzs+Hwm5544=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id C6E8229B54;
 Sun,  4 Feb 2024 01:22:32 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A514E29B53;
 Sun,  4 Feb 2024 01:22:29 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 1E392C08C4;
 Sat,  3 Feb 2024 22:22:28 -0800 (PST)
Date: Sat, 3 Feb 2024 22:22:26 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] firewire: core: send bus reset promptly on gap count error
Message-ID: <Zb8tId0k1iNqFstx@iguana.24-8.net>
References: <Za90vAQlDhbLpY67@iguana.24-8.net>
 <20240127083730.GA159729@workstation.local>
 <ZbTlaCCbpxQoqo0i@iguana.24-8.net>
 <20240131142714.GA60028@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240131142714.GA60028@workstation.local>
X-Pobox-Relay-ID: C5ED49A2-C325-11EE-842E-A19503B9AAD1-07713566!pb-smtp21.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Jan 31, 2024 at 11:27:14PM +0900,
 Takashi Sakamoto
 wrote: > I'd like to apply your patch for v6.9 kernel, while the patch >
 description is not suffice, as I address. I'm sorry to ask you more [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rWVtq-000058-Kd
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

On Wed, Jan 31, 2024 at 11:27:14PM +0900, Takashi Sakamoto wrote:
> I'd like to apply your patch for v6.9 kernel, while the patch
> description is not suffice, as I address. I'm sorry to ask you more
> work, but would I ask you to repost your patch with any detail
> description? The description should include enough information for
> developers inner/outer this subsystem to understand its background
> and intention.

Is the following description acceptable?

If we are bus manager and the bus has inconsistent gap counts, send a bus 
reset immediately instead of trying to read the root node's config ROM 
first. Otherwise, we could spend a lot of time trying to read the config 
ROM but never succeeding.

This eliminates a 50+ second delay before the FireWire bus is usable after 
a newly connected device is powered on in certain circumstances.

The delay occurs if a gap count inconsistency occurs, we are not the root 
node, and we become bus manager. One scenario that causes this is with a TI 
XIO2213B OHCI, the first time a Sony DSR-25 is powered on after being 
connected to the FireWire cable. In this configuration, the Linux box will 
not receive the initial PHY configuration packet sent by the DSR-25 as IRM, 
resulting in the DSR-25 having a gap count of 44 while the Linux box has a 
gap count of 63.

FireWire devices have a gap count parameter, which is set to 63 on power-up 
and can be changed with a PHY configuration packet. This determines the 
duration of the subaction and arbitration gaps. For reliable communication, 
all nodes on a FireWire bus must have the same gap count.

A node may have one or more of the following roles: root node, bus manager 
(BM), isochronous resource manager (IRM), and cycle master. Unless a root 
node was forced with a PHY configuration packet, any node might become root 
node after a bus reset. Only the root node can become cycle master. If the 
root node is not cycle master capable, the BM or IRM should force a change 
of root node.

After a bus reset, each node sends a self-ID packet, which contains its 
current gap count. A single bus reset does not change the gap count, but 
two bus resets in a row will set the gap count to 63. Because a consistent 
gap count is required for reliable communication, IEEE 1394a-2000 requires 
that the bus manager generate a bus reset if it detects that the gap count 
is inconsistent.

When the gap count is inconsistent, build_tree() will notice this after the 
self identification process. It will set card->gap_count to the invalid 
value 0. If we become bus master, this will force bm_work() to send a bus 
reset when it performs gap count optimization.

After a bus reset, there is no bus manager. We will almost always try to 
become bus manager. Once we become bus manager, we will first determine 
whether the root node is cycle master capable. Then, we will determine if 
the gap count should be changed. If either the root node or the gap count 
should be changed, we will generate a bus reset.

To determine if the root node is cycle master capable, we read its 
configuration ROM. bm_work() will wait until we have finished trying to 
read the configuration ROM.

However, an inconsistent gap count can make this take a long time. 
read_config_rom() will read the first few quadlets from the config ROM. Due 
to the gap count inconsistency, eventually one of the reads will time out. 
When read_config_rom() fails, fw_device_init() calls it again until 
MAX_RETRIES is reached. This takes 50+ seconds.

Once we give up trying to read the configuration ROM, bm_work() will wake 
up, assume that the root node is not cycle master capable, and do a bus 
reset. Hopefully, this will resolve the gap count inconsistency.

This change makes bm_work() check for an inconsistent gap count before 
waiting for the root node's configuration ROM. If the gap count is 
inconsistent, bm_work() will immediately do a bus reset. This eliminates 
the 50+ second delay and rapidly brings the bus to a working state.

I considered that if the gap count is inconsistent, a PHY configuration 
packet might not be successful, so it could be desirable to skip the PHY 
configuration packet before the bus reset in this case. However, IEEE 
1394a-2000 and IEEE 1394-2008 say that the bus manager may transmit a PHY 
configuration packet before a bus reset when correcting a gap count error. 
Since the standard endorses this, I decided it's safe to retain the PHY 
configuration packet transmission.

Normally, after a topology change, we will reset the bus a maximum of 5 
times to change the root node and perform gap count optimization. However, 
if there is a gap count inconsistency, we must always generate a bus reset. 
Otherwise the gap count inconsistency will persist and communication will 
be unreliable. For that reason, if there is a gap count inconstency, we 
generate a bus reset even if we already reached the 5 reset limit.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
