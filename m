Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE08356BD
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Jan 2024 17:51:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rRb2B-0007IR-RB;
	Sun, 21 Jan 2024 16:51:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tasos@tasossah.com>) id 1rRb29-0007IL-QY
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Jan 2024 16:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+z/e1yVlzLIkx65Y9Wf5W1+5WwZ/mh+u0FjZ4ZDjKKo=; b=F6tVrp/dK9HNJssS95MTcaD1ST
 ZjKtwVUpWxYRIVIQNvv3QQ49nUwVITMLBCsFiTkFwi8yPJ6hYxdq61qZNHA0y/f79jK8Bi3UzX3Ao
 a4tnYXCKwo6Ep5NSDlqONGdTn0MkucO2+96RfSs1qWDhKIZvamBvSsRjRjbFjIuFzFKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+z/e1yVlzLIkx65Y9Wf5W1+5WwZ/mh+u0FjZ4ZDjKKo=; b=JKvO1/Vha9q+KuvS6n9FF+Mm4/
 nErTcICvUYwUZnRQ10N5TBtQIL0uqIHwUv1qFV6boI5L5bDwhK+A4AVnZaoGWV8BajPj1ZXUbU5CZ
 wWc/2NU9+ZRv8/0MShopJofH4pSJh3de/HXkc/oW60ycJ1La0dyyZ8uoVUgMqR/u/I+Y=;
Received: from devnull.tasossah.com ([91.121.165.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRb28-00028p-9u for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Jan 2024 16:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=devnull.tasossah.com; s=vps; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+z/e1yVlzLIkx65Y9Wf5W1+5WwZ/mh+u0FjZ4ZDjKKo=; b=SRG8cr27o99zLM6bgw946S0F8c
 fS+qQYfLCYhunsQqmZ+OvT4gwNbMbss7f9b0GpBWbttmwkVq9jXIaNgJjozhagHSt++J9AgIIYGwr
 h7V4V0BkMgijbv21gjCpnUSvk4mxV9CoICoiTBqFIXIKbxqYqYl7xXxokqu8aoXrUjdY=;
Received: from [2a02:587:6a03:ec00::d54]
 by devnull.tasossah.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <tasos@tasossah.com>) id 1rRafF-000aiH-Ds
 for linux1394-devel@lists.sourceforge.net; Sun, 21 Jan 2024 18:27:17 +0200
Message-ID: <599c4a84-9823-48d2-ba11-fb4341962ced@tasossah.com>
Date: Sun, 21 Jan 2024 18:27:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Question regarding linux1394 and bug report
Content-Language: el-GR, en-GB
To: linux1394-devel@lists.sourceforge.net
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local>
Autocrypt: addr=tasos@tasossah.com; keydata=
 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
In-Reply-To: <20240105150222.GA11325@workstation.local>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Thank you for your response. It is much appreciated. Apologies
 for the late reply; I was hoping to respond after I've discovered something
 new as I don't want to create noise, but I haven't made much [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRb28-00028p-9u
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
From: Tasos Sahanidis via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Tasos Sahanidis <tasos@tasossah.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thank you for your response. It is much appreciated. Apologies for the
late reply; I was hoping to respond after I've discovered something new
as I don't want to create noise, but I haven't made much progress.

On 2024-01-05 17:02, Takashi Sakamoto wrote:
> Hi,
> 
> I'm not good at any type of video protocol over IEEE 1394, thus less help
> to your issue, sorry.
> 
> As a quick glance, you need to identify the direct cause of your issue
> that dvgrab never receives video data at recent version of kernel at
> first, then go to investigate kernel implementation if needed.
> 
> In my opinion, the best way is to investigate whether dvgrab (and
> libavc1394) can operate your hardware to transfer isochronous packet
> to your system.

Indeed. I attempted that by reading through the source code and
following the chain of libraries but I got lost really quickly.

> For example, you have dumped the part of communication between dvgrab
> and your hardware for AV/C commands. You can interpret them according to
> specification specific to tape recorder and player protocol. You can see
> two documents in 1394TA site archived by internet-archive project[1].
> 
> * AV/C Digital Interface Command Set General Specification Version 4.2
>   (2004006)
> * AV/C Tape Recorder/Player Subunit Specification 2.4 (2004005)

Thank you very much for linking those documents. I searched online for
the documents in my attempt to understand the communication but I was
unable to locate them. This helps a lot!

> Below communication expresses:
> 
> ```
>  firewire_ohci: AT spd 0 tl 2a, ffc1 -> ffc0, ack_complete, QW req, fffff0000b00 = 0120d07f
>  firewire_ohci: AR spd 0 tl 2a, ffc0 -> ffc1, ack_pending , QW req, fffff0000d00 = 0c20c460
>  firewire_ohci: AT spd 0 tl 2a, ffc1 -> ffc0, ack_complete, W resp
> ```
> 
> [dvgrab -> hardware]
> 0x01: command type:    status
> 0x20: subunit type/id: tape recorder/player
> 0xd0: opcode:          transport state: 
> 0x7f: operand[0]:      0x7e
> 
> [hardware -> dvgrab]
> 0x0c: response: stable
> 0x20: subunit type/id: tape recorder/player
> 0xc4: opcode:          transport_mode:  wind
> 0x60: operand[0]:      transport_state: stop
> 
> Below communication expresses:
> 
> ```
>  firewire_ohci: AT spd 0 tl 2d, ffc1 -> ffc0, ack_complete, QW req, fffff0000b00 = 0020c375
>  firewire_ohci: AR spd 0 tl 2d, ffc0 -> ffc1, ack_pending , QW req, fffff0000d00 = 0920c375
>  firewire_ohci: AT spd 0 tl 2d, ffc1 -> ffc0, ack_complete, W resp
> ```
> 
> [dvgrab -> hardware]
> 0x00: command type:    control
> 0x20: subunit type/id: tape recorder/player
> 0xc3: opcode:          play
> 0x75: operand[0]:      playback_mode: forward
> 
> [hardware -> dvgrab]
> 0x09: response:        accepted
> 0x20: subunit type/id: tape recorder/player
> 0xc3: opcode:          play
> 0x75: operand[0]:      playback_mode: forward
> 
> 
> I expect that if dvgrab takes the hardware to be prepared, it
> keeps isochronous resources by operating both CHANNEL_AVAILABLE registers
> (0xfffff0000224-0228) and BANDWIDTH_AVAILABLE register (0xfffff0000220),
> and operate plug control registers (0xfffff0000900-0904) according to
> IEC 61883-1. Then the hardware start transmission of isochronous
> packets, defined in IEC 61883-1 and -2/-3/-5.
> 

Understood. Thanks for the detailed explanation!

> [1] https://web.archive.org/web/20200204014929/1394ta.org/specifications/
> 
> 
> Regards
> 
> Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
