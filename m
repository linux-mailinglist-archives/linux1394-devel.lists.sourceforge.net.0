Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7482564A
	for <lists+linux1394-devel@lfdr.de>; Fri,  5 Jan 2024 16:03:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rLlif-0002ln-U7;
	Fri, 05 Jan 2024 15:02:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rLlie-0002lf-23
 for linux1394-devel@lists.sourceforge.net;
 Fri, 05 Jan 2024 15:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xub0mZnJwBOXFWPK5d3E+mhtj+HLfsnOZOXaLy17dZE=; b=JIVnhAehc/SDr7FrUGNqjhJYPw
 uV+9EGqTrKHVSFlxpz5Q27g2Ee4uusCZ9ZHciPVaZI55LgURQL562EaTWZ16mBFA9njsOyH4sl+Y3
 GSpmbHvv5d++BVaZDWd47vJokc2kiyHd1e5lp4toADSZE7rtnyv/2SHZ9+qAbXU0Pcuw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xub0mZnJwBOXFWPK5d3E+mhtj+HLfsnOZOXaLy17dZE=; b=WORB40QJFcQZ/VAMQgH2vcG9yu
 AvAITM0PGIQIn7mqHEYpmIIF8QC81/JZegOzXMGCNLDskF33BGY7Trc+m5u2pB6ld85p94us5skfM
 IjrFjXWgCE+CKjfQZaiWMm7atv2hBD23b5i8n+8k4dow7mQMV3AvxZX0d7naKnEVWKkI=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rLlia-0004p8-4j for linux1394-devel@lists.sourceforge.net;
 Fri, 05 Jan 2024 15:02:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id E99B43200A39;
 Fri,  5 Jan 2024 10:02:26 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 05 Jan 2024 10:02:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1704466946; x=
 1704553346; bh=xub0mZnJwBOXFWPK5d3E+mhtj+HLfsnOZOXaLy17dZE=; b=B
 CR2bVCE4e3AR69cUK8+bu5ToP5gMzm9XhkEhvj+fPCh5lkX6xlKM8R50+9znYr8c
 dBqGhlyeSWWWN5gD49ynWrWMHhBdCucA7SnfbgWj+2yNptpyN2gLtNG5Zil/jrGj
 toTldC3g++wRMNzkdEqL9GxZVefu/pMJQQJm3oKIVAbxdU76HPItMO7TSOLjqWwj
 9tIRyoL0R2TnL+8WsFacAnj5KcITJVUhZGZSXWMrUD0fAFWCvDRAP0uUCAxnI2qH
 SHF6aRs3RHqh+ispuYY8dFuZb7pmm33/4DudMIb08mzjTMDopaMltzkRg+zYkNqf
 gB3ow3mWhr3NYREK0kK0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704466946; x=1704553346; bh=xub0mZnJwBOXFWPK5d3E+mhtj+HL
 fsnOZOXaLy17dZE=; b=wrBFOkYBZLCiiFHIDD1PyWUJz3ld+BCDw1hxYZVVbE8J
 CCgGWZT6Tm/Xs2WfL321NTRBMAdEAPswWzjEQEuOSE9ODeeUTIOUJquTYCXgLA9E
 gO0gC2H88e7zj5o1cBWzM6h/rnNVHmQdFGgKWszrIA56VfiSXmf+1V607MH7ex77
 fJpNGpsFYdHAk9IxvrsmISfuFwLbfHC/urHencLNS5UFwJ/KqJWGRBtf6nxoYEEk
 /3wttCRXhtQRU2ylwHO/cXMp+9fm8HHldfWroCJRtWZyV9rPuGKbqugbZdrzNLlY
 hs9UmFSb9tS3ValiqKH7h5+p2REDUuXPGuWNVyiDng==
X-ME-Sender: <xms:ARqYZd4-YlFOk1El2zRbV6syohWLzif_RvT-HTIacCPc7Gn2uaY3Uw>
 <xme:ARqYZa5U7qv_O2tRa6FRECIRvIbquKw_Vcdj6JYam8Kjs-LUyE2Fb3mrqCYgcXcuQ
 LRTzC-dOMv3E2ez7EI>
X-ME-Received: <xmr:ARqYZUe6VkAySSBkjYAS_rGRVxuFwfbOJvduBsNv9GeEjWuCUHwt8NWodFPBdFlKK7NqM8PcpHN7uAzqFbUgWI9kQOAAf6JKSoo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdegledgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepfffhvfevuffkfhggtggu
 jgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceooh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhep
 teekhfdvkeeltdfhheefhffgfffghfektdeltedtlefhfefhtdekkeejudfgjedtnecuff
 homhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtpdgrrhgthhhivhgvrdhorhhgpddu
 feelgehtrgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:AhqYZWKGoOB09xxxoDnMlMr9Oe_wBCiuO9S1QYdghDUypKH5tvKQPg>
 <xmx:AhqYZRIIsfdVM8zqQzR-Syar-nLZ92i_RhbeBFPCgKF7ueG9XrZsrw>
 <xmx:AhqYZfw3HxEJ5hiFaPMzW1R14_42hdUGlJ7xtyT4oJjXTCpkWsIb8g>
 <xmx:AhqYZTw5cFYHTvw9kM_7WAJ-OmVNTU5utfpj3Ab3pPSPMqIWLy-gqw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 Jan 2024 10:02:24 -0500 (EST)
Date: Sat, 6 Jan 2024 00:02:22 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Tasos Sahanidis <tasos@tasossah.com>
Subject: Re: Question regarding linux1394 and bug report
Message-ID: <20240105150222.GA11325@workstation.local>
Mail-Followup-To: Tasos Sahanidis <tasos@tasossah.com>,
 linux1394-devel@lists.sourceforge.net
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jan 05, 2024 at 02:13:00PM +0200, Tasos Sahanidis
 wrote: > Hi Takashi,
 > > Thank you for your work in the Linux FireWire subsystem, 
 and apologies > for this direct email. > > About a year ago [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rLlia-0004p8-4j
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

On Fri, Jan 05, 2024 at 02:13:00PM +0200, Tasos Sahanidis wrote:
> Hi Takashi,
> 
> Thank you for your work in the Linux FireWire subsystem, and apologies
> for this direct email.
> 
> About a year ago I sent an email [0] to the linux1394 (user) mailing
> list with a bug report but received no response. I've been subscribed to
> linux1394-devel as well since and I've seen that it is now active.
> 
> I remember reading that there is a no cross-posting rule, thus I haven't
> re-sent my message to linux1394-devel. I have access to this hardware
> again, and will do for about the next two weeks.
> 
> Is this something you'd be interested in helping me with? If so, do you
> want me to re-send the e-mail to linux1394-devel and continue the
> conversation there? The issue still occurs on Ubuntu 22.04 with kernel
> 6.6.9.
> 
> Thank you for your time and looking forward to your response.
> 
> --
> Tasos
> 
> [0] https://sourceforge.net/p/linux1394/mailman/message/37766465/

I'm not good at any type of video protocol over IEEE 1394, thus less help
to your issue, sorry.

As a quick glance, you need to identify the direct cause of your issue
that dvgrab never receives video data at recent version of kernel at
first, then go to investigate kernel implementation if needed.

In my opinion, the best way is to investigate whether dvgrab (and
libavc1394) can operate your hardware to transfer isochronous packet
to your system.

For example, you have dumped the part of communication between dvgrab
and your hardware for AV/C commands. You can interpret them according to
specification specific to tape recorder and player protocol. You can see
two documents in 1394TA site archived by internet-archive project[1].

* AV/C Digital Interface Command Set General Specification Version 4.2
  (2004006)
* AV/C Tape Recorder/Player Subunit Specification 2.4 (2004005)

Below communication expresses:

```
 firewire_ohci: AT spd 0 tl 2a, ffc1 -> ffc0, ack_complete, QW req, fffff0000b00 = 0120d07f
 firewire_ohci: AR spd 0 tl 2a, ffc0 -> ffc1, ack_pending , QW req, fffff0000d00 = 0c20c460
 firewire_ohci: AT spd 0 tl 2a, ffc1 -> ffc0, ack_complete, W resp
```

[dvgrab -> hardware]
0x01: command type:    status
0x20: subunit type/id: tape recorder/player
0xd0: opcode:          transport state: 
0x7f: operand[0]:      0x7e

[hardware -> dvgrab]
0x0c: response: stable
0x20: subunit type/id: tape recorder/player
0xc4: opcode:          transport_mode:  wind
0x60: operand[0]:      transport_state: stop

Below communication expresses:

```
 firewire_ohci: AT spd 0 tl 2d, ffc1 -> ffc0, ack_complete, QW req, fffff0000b00 = 0020c375
 firewire_ohci: AR spd 0 tl 2d, ffc0 -> ffc1, ack_pending , QW req, fffff0000d00 = 0920c375
 firewire_ohci: AT spd 0 tl 2d, ffc1 -> ffc0, ack_complete, W resp
```

[dvgrab -> hardware]
0x00: command type:    control
0x20: subunit type/id: tape recorder/player
0xc3: opcode:          play
0x75: operand[0]:      playback_mode: forward

[hardware -> dvgrab]
0x09: response:        accepted
0x20: subunit type/id: tape recorder/player
0xc3: opcode:          play
0x75: operand[0]:      playback_mode: forward


I expect that if dvgrab takes the hardware to be prepared, it
keeps isochronous resources by operating both CHANNEL_AVAILABLE registers
(0xfffff0000224-0228) and BANDWIDTH_AVAILABLE register (0xfffff0000220),
and operate plug control registers (0xfffff0000900-0904) according to
IEC 61883-1. Then the hardware start transmission of isochronous
packets, defined in IEC 61883-1 and -2/-3/-5.


[1] https://web.archive.org/web/20200204014929/1394ta.org/specifications/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
