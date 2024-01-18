Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2E7831044
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Jan 2024 01:01:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rQFq8-0007dt-Ox;
	Thu, 18 Jan 2024 00:01:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rQFq7-0007dn-H9
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Jan 2024 00:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9gf70tt+jQONci9rIFMd+iupF8iJO9HZpbokr0wYV34=; b=H44Ehd7w9dAs8MIFJteZCJiUok
 /OvdOy3yw20q5kF3CsIZAuHYPSGJGsaC4lPm+dHrJFDFFK0miiwLlqJ/eFKkxla0nJb24pSNVFtUc
 DFI9c2DGxyZs51JISC/8nfcg11515XttwsWkca/T1D/tmMli5tYGGx1jedax7cMSTSek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9gf70tt+jQONci9rIFMd+iupF8iJO9HZpbokr0wYV34=; b=fWUNf72KQ9JMNhWOxOmRXAKt8n
 +u52cmTasGZQxfD1ULz3ZhecVRBRi3dAk6AlgQjg0uUN0xBrZRNlhFGdRqGePObcvm++SmPXknYKt
 Bvx635w2oAmpk06ty8xMa+ePpe8nCoG6UKqFCY6WjvAEV60MVwjwVAf3K/4fXDufRR5o=;
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rQFq3-00083g-JA for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Jan 2024 00:00:59 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id D0CE530B1D;
 Wed, 17 Jan 2024 19:00:45 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=/L3htDYtxo8HZC7fDfQ6WINugn34n6oIE5znezv
 kYR4=; b=YO4cQRnPSFgHRcSx7UKITQpV2/Y0hp7vH6Hs2MMhEEamWY4KRDZlelB
 KpalwuxDKdMFs/Vdzzsq4Q/bd4FFko5azEajZjil/wbezVXYEMxd6HwwBNMsViSa
 M22q138V1i9xydHLSL4pVULR+Pc4IS9IxVoqQn97N6JyvsSNYCVk=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id C893130B1C;
 Wed, 17 Jan 2024 19:00:45 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 7C14830B19;
 Wed, 17 Jan 2024 19:00:42 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id D5834C09AC;
 Wed, 17 Jan 2024 16:00:40 -0800 (PST)
Date: Wed, 17 Jan 2024 16:00:38 -0800
From: Adam Goldman <adamg@pobox.com>
To: Tasos Sahanidis <tasos@tasossah.com>
Subject: Re: Question regarding linux1394 and bug report
Message-ID: <ZahqJTeKy6W2IRix@iguana.24-8.net>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240105150222.GA11325@workstation.local>
X-Pobox-Relay-ID: 9F2ADC1A-B594-11EE-BDF8-F515D2CDFF5E-07713566!pb-smtp20.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tasos,
 Are you sure 2.6.35-rc3 is working? The "fw_working"
 log doesn't appear to include any video transmission. For reference, a kernel
 log of successful video transmission is below. I used "dvgrab -noavc -guid
 080046010261a1ff -d 1 -f avi /tmp/foo.avi" with a DCR-TRV120 in camera mode
 with no tape. (Of course, [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQFq3-00083g-JA
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

Hi Tasos,

Are you sure 2.6.35-rc3 is working? The "fw_working" log doesn't appear 
to include any video transmission.

For reference, a kernel log of successful video transmission is below. I 
used "dvgrab -noavc -guid 080046010261a1ff -d 1 -f avi /tmp/foo.avi" 
with a DCR-TRV120 in camera mode with no tape. (Of course, you would use 
-guid 00808801035809f1 with your GR-D20E.) Specifying the GUID prevents 
AV/C probing from cluttering the log. The computer reads '0900 oMPR and 
'0904 oPCR0 twice, and it sees that there is a broadcast connection on 
channel 63. At this time it will modify its own iPCR, but there is no 
Firewire transaction for this. Then the live video is received in a 
series of isochronous packets. Finally it reads oMPR and oPCR0 again - I 
don't know why. The dvgrab console output is ""/tmp/foo001.avi":     
3.62 MiB 30 frames timecode 45:85:85.45 date 2024.01.17 02:09:26".


[ 3071.907306] firewire_ohci 0000:02:00.0: IRQ 00000021 AR_resp AT_req
[ 3071.908198] firewire_ohci 0000:02:00.0: AR spd 0 tl 29, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3071.908933] firewire_ohci 0000:02:00.0: AT spd 0 tl 29, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000900
[ 3071.909872] firewire_ohci 0000:02:00.0: IRQ 00000021 AR_resp AT_req
[ 3071.910637] firewire_ohci 0000:02:00.0: AR spd 0 tl 2a, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a
[ 3071.911367] firewire_ohci 0000:02:00.0: AT spd 0 tl 2a, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000904
[ 3071.916497] firewire_ohci 0000:02:00.0: IRQ 00000021 AR_resp AT_req
[ 3071.917394] firewire_ohci 0000:02:00.0: AR spd 0 tl 2b, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3071.918160] firewire_ohci 0000:02:00.0: AT spd 0 tl 2b, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000900
[ 3071.920769] firewire_ohci 0000:02:00.0: IRQ 00000001 AT_req
[ 3071.921708] firewire_ohci 0000:02:00.0: IRQ 00000020 AR_resp
[ 3071.922565] firewire_ohci 0000:02:00.0: AT spd 0 tl 2c, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
[ 3071.923424] firewire_ohci 0000:02:00.0: AR spd 0 tl 2c, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a
[ 3071.970373] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.001624] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.032874] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.064133] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.095369] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.126625] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.157879] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.189119] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.220383] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.251631] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.282874] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.314132] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.345378] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.376624] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.407877] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.439120] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.470386] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.501620] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.532878] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.564137] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.595372] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.626629] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.657873] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.689137] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.720373] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.751628] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.782883] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.814083] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.845379] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.876629] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.907890] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.939125] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3072.970382] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.001640] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.032889] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.064094] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.095385] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.126640] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.157886] firewire_ohci 0000:02:00.0: IRQ 00000080 IR
[ 3073.163316] firewire_ohci 0000:02:00.0: IRQ 00000021 AR_resp AT_req
[ 3073.164037] firewire_ohci 0000:02:00.0: AR spd 0 tl 2d, ffc0 -> ffc1, ack_complete, QR resp = 3fffff01
[ 3073.164616] firewire_ohci 0000:02:00.0: AT spd 0 tl 2d, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000900
[ 3073.167216] firewire_ohci 0000:02:00.0: IRQ 00000021 AR_resp AT_req
[ 3073.167912] firewire_ohci 0000:02:00.0: AR spd 0 tl 2e, ffc0 -> ffc1, ack_complete, QR resp = c03f3c7a
[ 3073.168481] firewire_ohci 0000:02:00.0: AT spd 0 tl 2e, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000904


-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
