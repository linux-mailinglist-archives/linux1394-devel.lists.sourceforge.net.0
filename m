Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE2485ADD
	for <lists+linux1394-devel@lfdr.de>; Wed,  5 Jan 2022 22:40:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n5E0o-0004Uj-Kt; Wed, 05 Jan 2022 21:40:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <holger@dehnhardt.org>) id 1n5E0l-0004UM-UT
 for linux1394-devel@lists.sourceforge.net; Wed, 05 Jan 2022 21:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:Subject:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jq+DlxaisFempPqUN77I3VjSwvqRcJv9r5pCkPI0Vks=; b=LSkopXUpPW4z6aFtBK3AHLZLfw
 7u7mZnHd/DOHISrza2JhFdVgyoYBrArGCse0SQYfpEbLBnvChaSD7NGTrl8xFKeUvVfL5UJEOd3yg
 IsvSdMdfPuD8NukKXsw22mFGSwCwzvAK290yEfQTEsBSYfCTYxDoyjPatcoG96NE5MBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jq+DlxaisFempPqUN77I3VjSwvqRcJv9r5pCkPI0Vks=; b=mhL9/lThjnrA0vgQmNNZ9LlEbB
 U88i7QyUD9UW3P6Anwkfog69sWIxgedWsxKyP2SRpxFLeWRUsbmzXxZsWkek6r4e0c5hyJ7c/vneC
 Z/GcWHoXJ/0XCEKAXBlFf52UwX+7+4I+Xr54TfrzVz/7us8djZhRZmO+pVj0JidijV5w=;
Received: from mail.punkt-k.de ([5.180.65.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5E0l-00046u-4K
 for linux1394-devel@lists.sourceforge.net; Wed, 05 Jan 2022 21:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=dehnhardt.org; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:Subject:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jq+DlxaisFempPqUN77I3VjSwvqRcJv9r5pCkPI0Vks=; b=sdGw0ilXkT9fk2oOeOhPsJyKUC
 wmq7rXm0Rrz7QgZCggbPbVM2opaTfcFwghkRpyp3en4SFAoKFOoAuevvQl1whF5LhydZXDXRJ/fLC
 351TjDD8BHC0PoNvJJXPpDOOROmONamGuEai1twxfjNDbSi93TtgRck5iSKLKZBCgtH19x/Ru9AZe
 1EZ+l0D0y0v+fw2TUWYwn2uEN2ntA2Wi7/tUOW6vpNCmXhI0S/P939HWBJRrYmpvGx8f3HX6vzsEy
 Pz+2UYDZO7jUpplYpjwxNyuFFjJ6I/3cG8FjdwrnwH2x5fbyrR3b4jugMOfSbILzyGcaB1T3Ugf42
 Pu1TDtxw==;
Received: from p4fc95a37.dip0.t-ipconnect.de ([79.201.90.55]:42420
 helo=[192.168.201.44])
 by mail.punkt-k.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <holger@dehnhardt.org>)
 id 1n5DQ5-0000Sc-TL; Wed, 05 Jan 2022 22:02:05 +0100
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
To: David Runge <dave@sleepmap.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
References: <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx> <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de> <YEkMvjJt/Vu9Jbgu@hmbx>
 <YTfy7pLhWkTOn+aI@hmbx> <YTgdLkTs7wEmj8fh@workstation>
 <20210910115541.jjf3fovv4v3etvde@linutronix.de>
 <YTx7EVV5vFuhKM5i@workstation> <YT5MvpE5yrqj/5WI@hmbx>
Message-ID: <90f0895e-0629-a921-0af7-ddb5a6552ba0@dehnhardt.org>
Date: Wed, 5 Jan 2022 22:01:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YT5MvpE5yrqj/5WI@hmbx>
Content-Language: en-US
X-List: Yes
X-SA-Exim-Connect-IP: 79.201.90.55
X-SA-Exim-Rcpt-To: a.darwish@linutronix.de, linux-rt-users@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, bigeasy@linutronix.de, dave@sleepmap.de
X-SA-Exim-Mail-From: holger@dehnhardt.org
X-SA-Exim-Scanned: No (on mail.punkt-k.de); SAEximRunCond expanded to false
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12.09.21 20:53, David Runge wrote: > > Thanks at any rate
 to look into this! It is much appreciated! > > Is there anything further
 I can try to debug this using threadirqs? It > would be really ama [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n5E0l-00046u-4K
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
From: Holger Dehnhardt via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Holger Dehnhardt <holger@dehnhardt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 12.09.21 20:53, David Runge wrote:
> 
> Thanks at any rate to look into this! It is much appreciated!
> 
> Is there anything further I can try to debug this using threadirqs? It
> would be really amazing to be able to use this device on PREEMPT_RT
> again (especially given that now the ALSA driver has improved so
> drastically). :)
> 
> Best,
> David
> 


Hi,
since a processor and BIOS update I ran into the same problems as David.

* former processor alt: AMD Ryzen 2 0600X 6-Core
* new processor neu: AMD Ryzen 7 3700X 8-Core Processor
* kernel (Ubuntu): 5.4.0-91-lowlatency #102-Ubuntu SMP PREEMPT Fri Nov 5 
18:18:39 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
* chipset: AMD B450
* firewire card:
05:00.0 FireWire (IEEE 1394): Texas Instruments XIO2213A/B/XIO2221 
IEEE-1394b OHCI Controller [Cheetah Express] (rev 01) (prog-if 10 [OHCI])
         Subsystem: Device 3412:7856
         Flags: bus master, 66MHz, medium devsel, latency 32, IRQ 36
         Memory at fc204000 (32-bit, non-prefetchable) [size=2K]
         Memory at fc200000 (32-bit, non-prefetchable) [size=16K]
         Capabilities: [44] Power Management version 3
         Kernel modules: firewire_ohci

I did not change the kernel version - it worked before upgrading the 
processor and BIOS with the same kernel!

Now jack or alternatively "ffado-test Discover" immediately get 
zombified when I try to start them.
In addition to Davids findings a can add the following:
Under some weird circumstances I got the card to work (once immediately 
after loading BIOS to defaults and three times after an unsuccessful try 
to downgrade the BIOS).
Appended are two dmesg outputs one in which the card is initialized 
correctly [1], one in which the card did not work [2].
Another finding was, that after the driver was trying some time to read 
the config ROM, it gave up and, did a bus reset and everything was fine [3].

I just have build the kernel modules with some mor debugging output. So 
if there's something I should try, just give me intructions ;-)

Holger

[1]
https://cloud.dehnhardt.org/s/Z7jwqT9y3x6JgbE

[2]
https://cloud.dehnhardt.org/s/GAm2MjSqdbYDcod

[3]
[Mo Jan 3 18:41:53 2022] firewire_ohci 0000:05:00.0: added OHCI v1.10 
device as card 0, 8 IR + 8 IT contexts, quirks 0x2
[Mo Jan 3 18:41:53 2022] firewire_core 0000:05:00.0: created device fw0: 
GUID 7856341278563412, S800
[Mo Jan 3 18:41:53 2022] firewire_core 0000:05:00.0: phy config: new 
root=ffc1, gap_count=5
[Mo Jan 3 18:45:59 2022] Workqueue: firewire fw_device_workfn 
[firewire_core]
[Mo Jan 3 18:45:59 2022] fw_run_transaction+0xdc/0x110 [firewire_core]
[Mo Jan 3 18:45:59 2022] ? fw_core_handle_bus_reset+0x440/0x440 
[firewire_core]
[Mo Jan 3 18:45:59 2022] ? close_transaction+0x110/0x110 [firewire_core]
[Mo Jan 3 18:45:59 2022] ? transmit_phy_packet_callback+0x20/0x20 
[firewire_core]
[Mo Jan 3 18:45:59 2022] read_rom+0x5e/0xa0 [firewire_core]
[Mo Jan 3 18:45:59 2022] read_config_rom+0x8b/0x3d0 [firewire_core]
[Mo Jan 3 18:45:59 2022] fw_device_init+0x35/0x320 [firewire_core]
[Mo Jan 3 18:45:59 2022] fw_device_workfn+0x12/0x20 [firewire_core]
[snip...]
[Mo Jan 3 19:04:25 2022] Workqueue: firewire fw_device_workfn 
[firewire_core]
[Mo Jan 3 19:04:25 2022] fw_run_transaction+0xdc/0x110 [firewire_core]
[Mo Jan 3 19:04:25 2022] ? fw_core_handle_bus_reset+0x440/0x440 
[firewire_core]
[Mo Jan 3 19:04:25 2022] ? close_transaction+0x110/0x110 [firewire_core]
[Mo Jan 3 19:04:25 2022] ? transmit_phy_packet_callback+0x20/0x20 
[firewire_core]
[Mo Jan 3 19:04:25 2022] read_rom+0x5e/0xa0 [firewire_core]
[Mo Jan 3 19:04:25 2022] read_config_rom+0x8b/0x3d0 [firewire_core]
[Mo Jan 3 19:04:25 2022] fw_device_init+0x35/0x320 [firewire_core]
[Mo Jan 3 19:04:25 2022] fw_device_workfn+0x12/0x20 [firewire_core]
[Mo Jan 3 21:03:50 2022] firewire_core 0000:05:00.0: giving up on node 
ffc0: reading config rom failed: bus reset
[Mo Jan 3 21:03:51 2022] firewire_core 0000:05:00.0: rediscovered device fw0
[Mo Jan 3 21:03:56 2022] firewire_core 0000:05:00.0: rediscovered device fw0
[Mo Jan 3 21:03:56 2022] firewire_core 0000:05:00.0: phy config: new 
root=ffc1, gap_count=5
[Mo Jan 3 21:04:01 2022] firewire_core 0000:05:00.0: created device fw1: 
GUID 000ff20400001d98, S400


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
